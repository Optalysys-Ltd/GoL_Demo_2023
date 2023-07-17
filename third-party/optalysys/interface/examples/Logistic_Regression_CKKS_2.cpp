/**
 * @brief A simple Logistic regression example, using CKKS for evaluating the dot product.
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
T dot_product(const T& data, const Plaintext& kernel, const double bias, 
              const CryptoContext<DCRTPoly>& cc, const unsigned int size) 
{
    // multiply the encrypted data by the kernel
    T result = cc->EvalMult(data, kernel);

    // sum all the elements in the first one
    for (unsigned int i=1; 2*i <= size; i <<= 1) {
        result = cc->EvalAdd(result, cc->EvalRotate(result, i));
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
    const uint32_t multDepth = 1;
    const uint32_t scaleModSize = 30;
    CCParams<CryptoContextCKKSRNS> parameters;
    parameters.SetMultiplicativeDepth(multDepth);
    parameters.SetScalingModSize(scaleModSize);
    parameters.SetBatchSize(kernel.size());
    CryptoContext<DCRTPoly> cc = GenCryptoContext(parameters);
    cc->Enable(PKE);
    cc->Enable(LEVELEDSHE);
    std::cout << "CKKS scheme is using ring dimension " << cc->GetRingDimension() << std::endl << std::endl;

    // vector storing the powers of 2 up to the kernel size
    std::vector<int> powers_of_2;
    for (unsigned int i=1; i < kernel.size(); i <<= 1) {
        powers_of_2.push_back(i);
    }

    // generate the keys
    std::cout << "Generating the keys..." << std::endl;
    auto keys = cc->KeyGen();
    cc->EvalRotateKeyGen(keys.secretKey, powers_of_2);
    std::cout << "Keys generated" << std::endl;
    
    // define the data
    std::vector<std::vector<double>> data = file_to_vector("log_reg/data.dat");

    for (auto x: data) {

        // encrypt the data
        Plaintext p = cc->MakeCKKSPackedPlaintext(x);
        auto data_encrypted = cc->Encrypt(keys.publicKey, p);

        // turn the kernel into a plaintext
        Plaintext kernel_plaintext = cc->MakeCKKSPackedPlaintext(kernel);

        // perform the dot product
        auto result_encrypted = dot_product(data_encrypted, kernel_plaintext, bias, cc, kernel.size());

        // decrypt the result and apply the logistic function
        cc->Decrypt(keys.secretKey, result_encrypted, &p);
        double result = logistic_fun((p->GetRealPackedValue())[0]);

        std::cout << result << std::endl;
    }

    return 0;
}
