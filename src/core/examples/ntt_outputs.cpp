/** @file
 *  The aim of this example file is to show some NTT outputs to check 
 *  correctness and compare with other implementations.
 */

#include <iostream>
#include <vector>

#include "lattice/poly.h"

using namespace lbcrypto;

int main() {
    std::cout << "NTT TEST" << std::endl;

    NativeInteger Q = 257;
    uint32_t N = 16;
    NativeInteger rootOfUnity = 15;
    DiscreteUniformGeneratorImpl<NativeVector> dug;
    dug.SetModulus(Q);
    auto polyParams = std::make_shared<ILParamsImpl<NativeInteger>>(2 * N, Q, rootOfUnity);
    PolyImpl<NativeVector> x(dug, polyParams, Format::COEFFICIENT);
  
    std::vector<std::vector<uint32_t>> inputs ({
        {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        {0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        {1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    });

    for (auto y: inputs) {
        // set the elements of the input
        for (unsigned int i=0; i<N; i++) {
            x[i] = y[i];
        }

        // print the input
        std::cout << '\n';
        for (unsigned int i=0; i<N; i++) {
            std::cout << x[i] << ' ';
        }
        std::cout << std::endl;

        // NTT
        x.SwitchFormat();
        for (unsigned int i=0; i<N; i++) {
            std::cout << x[i] << ' ';
        }
        std::cout << std::endl;
        
        // inverse NTT
        x.SwitchFormat();
        for (unsigned int i=0; i<N; i++) {
            std::cout << x[i] << ' ';
        }
        std::cout << std::endl;
    }

    return 0;
}
