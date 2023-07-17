/**
 * @brief A simple Logistic regression example, using CKKS for evaluating the dot product.
 */

#include <vector>
#include <iostream>
#include "openfhe.h"

using namespace lbcrypto;

template<typename T>
T dot_product(const T& data, Plaintext& kernel, const double bias, 
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
    
    // define the kernel
    std::vector<double> kernel = {0.1, 0.2, 0.3, 0.4, 0.1, 0.2, 0.3, 0.4};

    // define the bias
    double bias = -0.6;
    
    // set-up the CryptoContext
    const uint32_t multDepth = 2;
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
    cc->EvalMultKeyGen(keys.secretKey);
    cc->EvalRotateKeyGen(keys.secretKey, powers_of_2);
    std::cout << "Keys generated" << std::endl;
    
    // define the data
    std::vector<std::vector<double>> data = {
        {0., 0., 0., 0., 0., 0., 0., 0.},
        {1., 0., 1., 0., -1., 0., 1., 0.},
        {1., 2., 3., 4., 5., 6., 7., 8.},
    };

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
