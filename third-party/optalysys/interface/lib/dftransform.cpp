/*
  This file contains the discrete fourier transform implementation.
 */

#include "../include/dftransform.h"

namespace lbcrypto {

std::map<unsigned int, unsigned int> OptDiscreteFourierTransform::indices_simulators;
std::complex<double>* OptDiscreteFourierTransform::rootOfUnityTable = nullptr;
size_t OptDiscreteFourierTransform::m_M                             = 0;
size_t OptDiscreteFourierTransform::m_Nh                            = 0;
bool OptDiscreteFourierTransform::m_isInitialized                   = false;

/// precomputed rotation group indices
std::vector<uint32_t> OptDiscreteFourierTransform::m_rotGroup;
/// precomputed ksi powers
std::vector<std::complex<double>> OptDiscreteFourierTransform::m_ksiPows;

void OptDiscreteFourierTransform::Reset() {
    if (rootOfUnityTable) {
        delete[] rootOfUnityTable;
        rootOfUnityTable = nullptr;
    }
}

void OptDiscreteFourierTransform::Initialize(size_t m, size_t nh) {
#pragma omp critical
    {
        m_isInitialized = false;
        m_M             = m;
        m_Nh            = nh;

        m_rotGroup.resize(m_Nh);
        uint32_t fivePows = 1;
        for (size_t i = 0; i < m_Nh; ++i) {
            m_rotGroup[i] = fivePows;
            fivePows *= 5;
            fivePows %= m_M;
        }

        m_ksiPows.resize(m_M + 1);
        for (size_t j = 0; j < m_M; ++j) {
            double angle = 2.0 * M_PI * j / m_M;
            m_ksiPows[j].real(cos(angle));
            m_ksiPows[j].imag(sin(angle));
        }

        m_ksiPows[m_M]  = m_ksiPows[0];
        m_isInitialized = true;
    }
}

void OptDiscreteFourierTransform::PreComputeTable(uint32_t s) {
    Reset();

    rootOfUnityTable = new std::complex<double>[s];
    for (size_t j = 0; j < s; j++) {
        rootOfUnityTable[j] = std::polar(1.0, -2 * M_PI * j / s);
    }
}

std::vector<std::complex<double>> OptDiscreteFourierTransform::FFTForwardTransform(std::vector<std::complex<double>>& A) {

    // build the OFT simulator if needed
    unsigned int index_oft_sim = BuildOftSimulator(A.size());

    // compute the Fourier transform
    std::vector<std::complex<double>> B(A.size());
    Opt::ft_inplace_stable(index_oft_sim, (double*) A.data(), (double*) B.data());

    return B;
}

std::vector<std::complex<double>> OptDiscreteFourierTransform::FFTInverseTransform(std::vector<std::complex<double>>& A) {
    std::vector<std::complex<double>> result = OptDiscreteFourierTransform::FFTForwardTransform(A);
    double n                                 = result.size() / 2;
    for (int i = 0; i < n; i++) {
        result[i] = std::complex<double>(result[i].real() / n, result[i].imag() / n);
    }
    return result;
}

std::vector<std::complex<double>> OptDiscreteFourierTransform::FFTTrueInverseTransform(std::vector<std::complex<double>>& A) {
    std::vector<std::complex<double>> result = OptDiscreteFourierTransform::FFTForwardTransform(A);
    double n                                 = result.size();
    for (int i = 1; 2*i < n; i++) {
        std::iter_swap(result.begin()+i, result.begin()+n-i);
    }
    for (int i = 0; i < n; i++) {
        result[i] = std::complex<double>(result[i].real() / n, result[i].imag() / n);
    }
    return result;
}

std::vector<std::complex<double>> OptDiscreteFourierTransform::ForwardTransform(std::vector<std::complex<double>> A) {
    int n = A.size();
    A.resize(2 * n);
    for (int i = 0; i < n; i++) {
        A[n + i] = 0;
        // A.push_back(0);
    }
    // if (rootOfUnityTable == nullptr) {
    //   PreComputeTable(2 * n);
    // }
    std::vector<std::complex<double>> dft = FFTForwardTransform(A);
    std::vector<std::complex<double>> dftRemainder(dft.size() / 2);
    size_t k = 0;
    for (int i = dft.size() - 1; i > 0; i--) {
        if (i % 2 != 0) {
            dftRemainder[k] = dft[i];
            k++;
            // dftRemainder.push_back(dft[i]);
        }
    }
    return dftRemainder;
}

std::vector<std::complex<double>> OptDiscreteFourierTransform::InverseTransform(std::vector<std::complex<double>> A) {
    size_t n = A.size();
    std::vector<std::complex<double>> dft(2 * n);
    for (size_t i = 0; i < n; i++) {
        dft[2 * i]     = 0;
        dft[2 * i + 1] = A[i];
    }
    std::vector<std::complex<double>> invDft = FFTInverseTransform(dft);
    std::vector<std::complex<double>> invDftRemainder(invDft.size() / 2);
    for (size_t i = 0; i < invDft.size() / 2; i++) {
        invDftRemainder[i] = invDft[i];
    }
    return invDftRemainder;
}

void OptDiscreteFourierTransform::FFTSpecialInvLazy(std::vector<std::complex<double>>& vals) {
    uint32_t size = vals.size();
    for (size_t len = size; len >= 1; len >>= 1) {
        for (size_t i = 0; i < size; i += len) {
            size_t lenh = len >> 1;
            size_t lenq = len << 2;
            size_t gap = m_M / lenq;
            for (size_t j = 0; j < lenh; ++j) {
                size_t idx             = (lenq - (m_rotGroup[j] % lenq)) * gap;
                std::complex<double> u = vals[i + j] + vals[i + j + lenh];
                std::complex<double> v = vals[i + j] - vals[i + j + lenh];
                v *= m_ksiPows[idx];
                vals[i + j]        = u;
                vals[i + j + lenh] = v;
            }
        }
    }
    BitReverse(vals);
}

void OptDiscreteFourierTransform::FFTSpecialInv(std::vector<std::complex<double>>& vals) {
    // if the precomputed tables do not exist
    if ((!m_isInitialized))
        Initialize(m_M, m_M / 4);
    FFTSpecialInvLazy(vals);
    uint32_t size = vals.size();
    for (size_t i = 0; i < size; ++i) {
        vals[i] /= size;
    }
}

void OptDiscreteFourierTransform::FFTSpecial(std::vector<std::complex<double>>& vals) {
    // if the precomputed tables do not exist
  if ((!m_isInitialized))
      Initialize(m_M, m_M / 4);
    BitReverse(vals);
    uint32_t size = vals.size();
    for (size_t len = 2; len <= size; len <<= 1) {
        size_t lenh = len >> 1;
        size_t lenq = len << 2;
        size_t gap = m_M / lenq;
        for (size_t i = 0; i < size; i += len) {
            for (size_t j = 0; j < lenh; ++j) {
                int64_t idx            = ((m_rotGroup[j] % lenq)) * gap;
                std::complex<double> u = vals[i + j];
                std::complex<double> v = vals[i + j + lenh];
                v *= m_ksiPows[idx];
                vals[i + j]        = u + v;
                vals[i + j + lenh] = u - v;
            }
        }
    }
}

void OptDiscreteFourierTransform::BitReverse(std::vector<std::complex<double>>& vals) {
    uint32_t size = vals.size();
    for (size_t i = 1, j = 0; i < size; ++i) {
        size_t bit = size >> 1;
        for (; j >= bit; bit >>= 1) {
            j -= bit;
        }
        j += bit;
        if (i < j) {
            swap(vals[i], vals[j]);
        }
    }
}

unsigned int OptDiscreteFourierTransform::BuildOftSimulator(unsigned int size) {

    // check if a simulator already exists; if yes, return
    auto pos = indices_simulators.find(size);
    if (pos != indices_simulators.end())
        return pos -> second;
    
    // define the simulator
    const unsigned int index_new_simulator = Opt::define(Opt::TARGET_ACCURACY, size);

    if (index_new_simulator) {
        // add the simulator to the hashmap
        indices_simulators.insert({size, index_new_simulator});
    } else {
        // if failed, print an error
        std::cerr << "Could not define an OFT simulator with size {}" << size << std::endl;
    }
    return index_new_simulator;
}
    
double OptDiscreteFourierTransform::runtime_Etech_s() {
    double runtime_s = 0.;

    // loop over the simulators and sum their runtimes
    for (auto it = indices_simulators.begin(); it != indices_simulators.end(); it++) {
        runtime_s += Opt::get_runtime_s(it->second);
    }

    return runtime_s;
}

}  // namespace lbcrypto
