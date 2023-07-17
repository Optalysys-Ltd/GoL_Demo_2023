/**
 * @brief A simple car sale prediction demo using logistic regression and CKKS.
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
    
    // load the kernel from `car_data/model.dat`
    std::vector<double> kernel = file_to_vector_single("car_data/model.dat");

    // load the mean values and standard deviations computed from the training data
    std::vector<double> mean_values = file_to_vector_single("car_data/mean_values.dat");
    std::vector<double> standard_deviations = file_to_vector_single("car_data/standard_deviations.dat");

    // define the bias
    const double bias = kernel[0];
    kernel.erase(kernel.begin());
    
    // set-up the CryptoContext
    const uint32_t multDepth = 1;
    const uint32_t scaleModSize = 30;
    const uint32_t batch_size = 128;
    CCParams<CryptoContextCKKSRNS> parameters;
    parameters.SetMultiplicativeDepth(multDepth);
    parameters.SetScalingModSize(scaleModSize);
    parameters.SetBatchSize(batch_size);
    CryptoContext<DCRTPoly> cc = GenCryptoContext(parameters);
    cc->Enable(PKE);
    cc->Enable(LEVELEDSHE);
    std::cout << "CKKS scheme is using ring dimension " << cc->GetRingDimension() << '\n' << std::endl;

    // generate the keys
    std::cout << "Generating the keys..." << std::endl;
    auto keys = cc->KeyGen();
    std::cout << "Keys generated" << std::endl;
    
    // load the test data
    std::vector<std::vector<double>> data_test_x = file_to_vector("car_data/data_test_x.dat");
    std::vector<double> data_test_y = file_to_vector_single("car_data/data_test_y.dat");

    // encrypt the data
    std::vector<Ciphertext<DCRTPoly>> data_enc;
    for (unsigned int i=0; i<kernel.size(); i++) {
        std::vector<double> col;
        for (unsigned int j=0; j<batch_size; j++) {
            col.push_back((data_test_x[j][i] - mean_values[i]) / standard_deviations[i]);
        }
        Plaintext plaintext = cc->MakeCKKSPackedPlaintext(col);
        data_enc.push_back(cc->Encrypt(keys.publicKey, plaintext));
    }

    // compute the dot product
    auto result_encrypted = dot_product(data_enc, kernel, bias, cc, kernel.size());
        
    // decrypt the result and apply the logistic function
    Plaintext p;
    cc->Decrypt(keys.secretKey, result_encrypted, &p);
    double accuracy = 0;
    for (unsigned int i=0; i<batch_size; i++) {
        double result = logistic_fun((p->GetRealPackedValue())[i]);
        if (abs(result - data_test_y[i]) < 0.5) {
            accuracy += 1;
        }
        std::cout << "Logistic Regression result: " << result << "\tExpected result: " << data_test_y[i] << std::endl;
    }
    std::cout << "Accuracy: " << accuracy / batch_size << std::endl;

    return 0;
}
