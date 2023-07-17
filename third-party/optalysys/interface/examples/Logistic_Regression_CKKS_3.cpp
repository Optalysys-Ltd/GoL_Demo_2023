/**
 * @brief A simple Logistic regression example using CKKS, with input parallelisation.
 *
 * The kernel, bias, and data are loaded from files at runtime. 
 * The first two are loaded from `log_reg/kernel.dat`, which must be a space-separated list of 
 * floating-point values. The first value is the bias and the other ones define the kernel.
 * The data is loaded from `log_reg/data.dat`, and must be space- and newline-separated.
 */

#include <vector>
#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include "openfhe.h"

using namespace lbcrypto;


std::vector<double> file_to_vector_single(const std::string fname) {
    std::vector<double> result;
    std::ifstream infile(fname);
    double x;
    while (infile >> x) {
        result.push_back(x);
    }
    return result;
}


std::vector<std::vector<double>> file_to_vector(const std::string fname) {
    std::vector<std::vector<double>> result;
    std::ifstream infile(fname);
    std::string line;
    while (std::getline(infile, line)) {
        std::istringstream iss(line);
        std::vector<double> row;
        double x;
        while (iss >> x) {
            row.push_back(x);
        }
        result.push_back(row);
    }
    return result;
}


template<typename T>
T dot_product(const std::vector<T>& data, const std::vector<double>& kernel, const double bias, 
              const CryptoContext<DCRTPoly>& cc, const unsigned int size) 
{
    // compute the dot product
    T result = cc->EvalMult(data[0], kernel[0]);
    for (unsigned int i=1; i < data.size(); i++) {
        result = cc->EvalAdd(result, cc->EvalMult(data[i], kernel[i]));
    }

    // add the bias
    result = cc->EvalAdd(result, bias);

    return result;
}


double logistic_fun(const double x) {
    return 1. / (1. + exp(-x));
}


int main() {
    
    // load the kernel from `log_reg/kernel.dat`
    std::vector<double> kernel = file_to_vector_single("log_reg/kernel.dat");

    // define the bias
    const double bias = kernel[0];
    kernel.erase(kernel.begin());
    
    // set-up the CryptoContext
    const uint32_t multDepth = 2;
    const uint32_t scaleModSize = 30;
    const uint32_t batch_size = 4;
    CCParams<CryptoContextCKKSRNS> parameters;
    parameters.SetMultiplicativeDepth(multDepth);
    parameters.SetScalingModSize(scaleModSize);
    parameters.SetBatchSize(batch_size);
    CryptoContext<DCRTPoly> cc = GenCryptoContext(parameters);
    cc->Enable(PKE);
    cc->Enable(LEVELEDSHE);
    std::cout << "CKKS scheme is using ring dimension " << cc->GetRingDimension() << std::endl << std::endl;

    // generate the keys
    std::cout << "Generating the keys..." << std::endl;
    auto keys = cc->KeyGen();
    std::cout << "Keys generated" << std::endl;
    
    // load the data
    std::vector<std::vector<double>> data = file_to_vector("log_reg/data.dat");

    // encrypt the data
    std::vector<Ciphertext<DCRTPoly>> data_enc;
    for (unsigned int i=0; i<kernel.size(); i++) {
        std::vector<double> col;
        for (auto row: data) {
            col.push_back(row[i]);
        }
        data_enc.push_back(cc->Encrypt(keys.publicKey, cc->MakeCKKSPackedPlaintext(col)));
    }

    // compute the dot product
    auto result_encrypted = dot_product(data_enc, kernel, bias, cc, kernel.size());
        
    // decrypt the result and apply the logistic function
    Plaintext p;
    cc->Decrypt(keys.secretKey, result_encrypted, &p);
    for (unsigned int i=0; i<data.size(); i++) {
        double result = logistic_fun((p->GetRealPackedValue())[i]);
        std::cout << result << std::endl;
    }

    return 0;
}
