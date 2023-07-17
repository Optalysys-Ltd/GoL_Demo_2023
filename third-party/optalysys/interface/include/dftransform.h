/*
  This code contains the discrete fourier transform definitions
 */

#ifndef LBCRYPTO_MATH_DFTRANSFORM_H
#define LBCRYPTO_MATH_DFTRANSFORM_H

#include <time.h>
#include <chrono>
#include <complex>
#include <fstream>
#include <map>
#include <thread>
#include <vector>
#include <map>

// namespace for GraphEC internal functions and parameters
namespace Opt {
    // header file for the Optalysys simulator
    #include "../../Optalysys_proto_GraphEC/simulators.h"
    
    // number of bits of accuracy for the small FTs
    constexpr unsigned int TARGET_ACCURACY = 60;
}

#include "math/hal.h"
#include "math/nbtheory.h"
#include "utils/utilities.h"

#ifndef M_PI
    #define M_PI 3.14159265358979323846
#endif

namespace lbcrypto {

class OptDiscreteFourierTransform {
public:
    /**
   * Virtual FFT forward transform.
   *
   * @param A is the element to perform the transform on.
   * @return is the output result of the transform.
   */
    static std::vector<std::complex<double>> FFTForwardTransform(std::vector<std::complex<double>>& A);

    /**
   * Virtual FFT inverse transform.
   *
   * @param A is the element to perform the inverse transform on.
   * @return is the output result of the inverse transform.
   */
    static std::vector<std::complex<double>> FFTInverseTransform(std::vector<std::complex<double>>& A);
    
    // trur inverse FT
    static std::vector<std::complex<double>> FFTTrueInverseTransform(std::vector<std::complex<double>>& A);

    /**
   * Virtual forward transform.
   *
   * @param A is the element to perform the transform on.
   * @return is the output result of the transform.
   */
    static std::vector<std::complex<double>> ForwardTransform(std::vector<std::complex<double>> A);

    /**
   * Virtual inverse transform.
   *
   * @param A is the element to perform the inverse transform on.
   * @return is the output result of the inverse transform.
   */
    static std::vector<std::complex<double>> InverseTransform(std::vector<std::complex<double>> A);

    /**
   * In-place FFT-like algorithm used in CKKS encoding. For more details,
   * see Algorithm 1 in https://eprint.iacr.org/2018/1043.pdf.
   *
   * @param vals is a vector of complex numbers.
   */
    static void FFTSpecialInv(std::vector<std::complex<double>>& vals);

    /**
   * In-place FFT-like algorithm used in CKKS decoding. For more details,
   * see Algorithm 1 in https://eprint.iacr.org/2018/1043.pdf.
   *
   * @param vals is a vector of complex numbers.
   */
    static void FFTSpecial(std::vector<std::complex<double>>& vals);

    /**
   * Reset cached values for the transform to empty.
   */
    static void Reset();

    static void PreComputeTable(uint32_t s);

    static void Initialize(size_t m, size_t nh);
    
    // compute the total runtime on the Etech (in s)
    static double runtime_Etech_s();

private:

    // check if a simulator with the right FT size exists and create one if not
    // return the index of the simulator
    static unsigned int BuildOftSimulator(unsigned int);

    // hashmap of (Fourier size, simulator index)
    static std::map<unsigned int, unsigned int> indices_simulators;

    static std::complex<double>* rootOfUnityTable;

    static size_t m_M;
    static size_t m_Nh;

    // flag that is set to false
    // when initialization is in progress
    static bool m_isInitialized;

    /// precomputed rotation group indexes
    static std::vector<uint32_t> m_rotGroup;
    /// precomputed ksi powers
    static std::vector<std::complex<double>> m_ksiPows;

    static void FFTSpecialInvLazy(std::vector<std::complex<double>>& vals);

    static void BitReverse(std::vector<std::complex<double>>& vals);
};

}  // namespace lbcrypto

#endif
