#include <chrono>
#include "../include/dftransform.h"

int main() {

    // Fourier transform size
    unsigned int ft_size = 4096;

    // number of direct and inverse FTs
    unsigned int n_ft = 10000;

    // define the input
    std::vector<std::complex<double>> x(ft_size);
    for (unsigned int i=0; i<ft_size; i++) 
        x[i] = i;

    std::cout << "Computing "
              << n_ft
              << " FTs and iFTs of size "
              << ft_size
              << std::endl;

    // start time
    auto begin = std::chrono::steady_clock::now();

    // perform sequential FTs and iFTs
    for (unsigned int i=0; i<n_ft; i++) {

        // direct FT
        x = lbcrypto::OptDiscreteFourierTransform::FFTForwardTransform(x);

        // inverse FT
        x = lbcrypto::OptDiscreteFourierTransform::FFTTrueInverseTransform(x);
    }
    
    // end time
    auto end = std::chrono::steady_clock::now();
    
    // for (unsigned int i=0; i<ft_size; i++) 
    //     std::cout << x[i].real() << " " << x[i].imag() << std::endl;
    
    // compute the error
    double rmse = 0.;
    for (unsigned int i=0; i<ft_size; i++) 
        rmse += norm(x[i] - std::complex<double>({i,0}));
    rmse /= ft_size;
    rmse = sqrt(rmse);
    std::cout << "Root mean squared error: " << rmse << std::endl;

    // CPU time
    std::cout << "Runtime on CPU:          " 
              << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / (1e6)
              << "s"
              << std::endl;

    // runtime on the Etech
    std::cout << "Runtime on the Etech:    " 
              << lbcrypto::OptDiscreteFourierTransform::runtime_Etech_s()
              << "s"
              << std::endl;

    return 0;
}
