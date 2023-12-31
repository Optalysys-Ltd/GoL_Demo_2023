//==================================================================================
// BSD 2-Clause License
//
// Copyright (c) 2014-2022, NJIT, Duality Technologies Inc. and other contributors
//
// All rights reserved.
//
// Author TPOC: contact@openfhe.org
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//==================================================================================


#ifdef OPTALYSYS_SIM

    #ifndef LBCRYPTO_LATTICE_OPTDCRTPOLY_H
    #define LBCRYPTO_LATTICE_OPTDCRTPOLY_H

    // C++ standard libs
    #include <vector>

    // Local OPENFHE libs
    #include "math/hal.h"
    #include "lattice/hal/default/dcrtpoly.h"
    #include "utils/debug.h"

// OPENFHE's main namespace
namespace lbcrypto {

/**
 * This class overrides the minimum number of methods, what is necassary for use
 * in OPENFHE to substitute HexlDCRTPoly for DCRTPolyImpl and methods that have
 * optimized procedures for specific architecture.
 */
template <typename VecType = BigVector>
class OptDCRTPoly : public DCRTPolyImpl<VecType> {
public:
    // Shortcut to base class
    using DCRTPolyType = DCRTPolyImpl<VecType>;

    using Integer = typename VecType::Integer;
    using Params  = ILDCRTParams<Integer>;

    typedef VecType Vector;

    using DggType = typename DCRTPolyType::DggType;
    using DugType = typename DCRTPolyType::DugType;
    using TugType = typename DCRTPolyType::TugType;
    using BugType = typename DCRTPolyType::BugType;

    // this class contains an array of these:
    using PolyType = typename DCRTPolyType::PolyType;

    // the composed polynomial type
    using PolyLargeType = typename DCRTPolyType::PolyLargeType;

    static const std::string GetElementName() {
        return "OptDCRTPoly";
    }

    // =============================================================================================
    // All methods below here are required for substitution with DCRTPolyImpl<> but are not optimized

    OptDCRTPoly() : DCRTPolyType() {}

    OptDCRTPoly(const std::shared_ptr<Params> params, Format format = EVALUATION, bool initializeElementToZero = false)
        : DCRTPolyType(params, format, initializeElementToZero) {}

    // Need to be able to make a copy,
    OptDCRTPoly(const DCRTPolyType& dcrtPoly) : DCRTPolyType(dcrtPoly) {}
    OptDCRTPoly(const std::vector<PolyType>& elements) : DCRTPolyType(elements) {}
    OptDCRTPoly(const DggType& dgg, const std::shared_ptr<Params> params, Format format = EVALUATION)
        : DCRTPolyType(dgg, params, format) {}
    OptDCRTPoly(DugType& dug, const std::shared_ptr<Params> params, Format format = EVALUATION)
        : DCRTPolyType(dug, params, format) {}
    OptDCRTPoly(const TugType& tug, const std::shared_ptr<Params> params, Format format = EVALUATION, uint32_t h = 0)
        : DCRTPolyType(tug, params, format, h) {}
    OptDCRTPoly(const BugType& bug, const std::shared_ptr<Params> params, Format format = EVALUATION)
        : DCRTPolyType(bug, params, format) {}
    OptDCRTPoly(const PolyLargeType& element, const std::shared_ptr<Params> params) : DCRTPolyType(element, params) {}

    /**
   * @brief Assignment Operator.
   *
   * @param &rhs the copied element.
   * @return the resulting element.
   */
    virtual const OptDCRTPoly& operator=(const DCRTPolyType& rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    /**
   * @brief Move Assignment Operator.
   *
   * @param &rhs the copied element.
   * @return the resulting element.
   */
    virtual const OptDCRTPoly& operator=(DCRTPolyType&& rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    // All assignment operators need to be overriden because the return type is
    // different
    const OptDCRTPoly& operator=(const PolyLargeType& rhs) {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    const OptDCRTPoly& operator=(const PolyType& rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    /**
   * @brief Initalizer list
   *
   * @param &rhs the list to initalized the element.
   * @return the resulting element.
   */
    OptDCRTPoly& operator=(std::initializer_list<uint64_t> rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    /**
   * @brief Assignment Operator. The usint rhs will be set at index zero and all
   * other indices will be set to zero.
   *
   * @param rhs is the usint to assign to index zero.
   * @return the resulting vector.
   */
    OptDCRTPoly& operator=(uint64_t rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    /**
   * @brief Creates a Poly from a vector of signed integers (used for trapdoor
   * sampling)
   *
   * @param &rhs the vector to set the PolyImpl to.
   * @return the resulting PolyImpl.
   */
    OptDCRTPoly& operator=(const std::vector<int64_t>& rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    /**
   * @brief Creates a Poly from a vector of signed integers (used for trapdoor
   * sampling)
   *
   * @param &rhs the vector to set the PolyImpl to.
   * @return the resulting PolyImpl.
   */
    OptDCRTPoly& operator=(const std::vector<int32_t>& rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

    /**
   * @brief Initalizer list
   *
   * @param &rhs the list to set the PolyImpl to.
   * @return the resulting PolyImpl.
   */

    OptDCRTPoly& operator=(std::initializer_list<std::string> rhs) override {
        DCRTPolyType::operator=(rhs);
        return *this;
    }

};  // OptDCRTPoly

}  // namespace lbcrypto

    #endif  // LBCRYPTO_LATTICE_OPTDCRTPOLY_H

#endif  // OPTALYSYS_SIM

