/** 
 * @brief A simple example featuring Conway's game of Life.
 */

#include "binfhecontext.h"
#include <vector>
#include <iostream>

/**
 * @brief add 1 boolean value to 3 bits
 */
template <typename T>
void add_1_3(T b0, T b1, T b2, const T a, const lbcrypto::BinFHEContext& cc)
{
    auto r1 = cc.EvalBinGate(lbcrypto::AND, a, b0);
    *b0 = *cc.EvalBinGate(lbcrypto::XOR, a, b0);
    auto r2 = cc.EvalBinGate(lbcrypto::AND, r1, b1);
    *b1 = *cc.EvalBinGate(lbcrypto::XOR, r1, b1);
    *b2 = *cc.EvalBinGate(lbcrypto::XOR, r2, b2);
}

/**
 * @brief 3-bits adder of 8 boolean values
 */
template <typename T>
void three_bits_adder(T b0, T b1, T b2, 
                      const T a1, const T a2, const T a3, const T a4, 
                      const T a5, const T a6, const T a7, const T a8,
                      const lbcrypto::BinFHEContext& cc) 
{

    // add successively the 8 inputs bits
    *b1 = *cc.EvalBinGate(lbcrypto::AND, a1, a2);
    *b0 = *cc.EvalBinGate(lbcrypto::XOR, a1, a2);
    add_1_3(b0, b1, b2, a3, cc);
    add_1_3(b0, b1, b2, a4, cc);
    add_1_3(b0, b1, b2, a5, cc);
    add_1_3(b0, b1, b2, a6, cc);
    add_1_3(b0, b1, b2, a7, cc);
    add_1_3(b0, b1, b2, a8, cc);
}

/**
 * @brief the homomorphic update function
 * @param data encrypted vector to be evolved
 * @param row_length length of a row
 *
 * We use periodic boundary conditions.
 */
template <typename T>
std::vector<T> update(const std::vector<T>& enc_state, const unsigned int row_length, 
                      const T zero, const lbcrypto::BinFHEContext& cc) {
    std::vector<T> new_enc_state;
    unsigned int n_rows = enc_state.size() / row_length;
    for (unsigned int i = 0; i < n_rows; i++) {
        unsigned int i_m = i == 0 ? n_rows-1 : i-1;
        unsigned int i_p = i+1 == n_rows ? 0 : i+1;
        for (unsigned int j = 0; j < row_length; j++) {
            unsigned int j_m = j == 0 ? row_length-1 : j-1;
            unsigned int j_p = j+1 == row_length ? 0 : j+1;
            
            // three-bits adder
            T b0 = std::make_shared<lbcrypto::LWECiphertextImpl>(*zero);
            T b1 = std::make_shared<lbcrypto::LWECiphertextImpl>(*zero);
            T b2 = std::make_shared<lbcrypto::LWECiphertextImpl>(*zero);
            three_bits_adder(b0, b1, b2,
                             enc_state[i_m*row_length+j_m], enc_state[i_m*row_length+j],
                             enc_state[i_m*row_length+j_p], enc_state[i*row_length+j_m],
                             enc_state[i*row_length+j_p], enc_state[i_p*row_length+j_m],
                             enc_state[i_p*row_length+j], enc_state[i_p*row_length+j_p],
                             cc);
            
            // push the updated state 
            new_enc_state.push_back(
                cc.EvalBinGate(lbcrypto::AND, 
                    cc.EvalNOT(b2),
                    cc.EvalBinGate(lbcrypto::AND,
                        b1, 
                        cc.EvalBinGate(lbcrypto::OR,
                            b0, 
                            enc_state[i*row_length+j]
                        )
                    )
                )
            );
            std::cout << i * row_length + j + 1 << " " << std::flush;
        }
    }
    std::cout << std::endl;
    return new_enc_state;
}


/** 
 * @brief Print a vector of boolean values
 * @param data vector to be printed
 * @param row_length length of a row
 *
 * The vector `data` is assumed to have a size that is a multiple of `row_length`.
 */
void print_array(const std::vector<bool>& data, const unsigned int row_length) {
    for (unsigned int i = 0; i < data.size() / row_length; i++) {
        for (unsigned int j = 0; j < row_length; j++) {
            if (data[i*row_length+j]) {
                std::cout << "■ ";
            } else {
                std::cout << "· ";
            }
        }
        std::cout << std::endl;
    }
}


int main() {

    // length of each row
    unsigned int row_length = 6;

    // number of steps to run
    unsigned int n_steps = 3;

    // initial state
    const std::vector<bool> initial_state = {
        0, 0, 0, 0, 0, 0,
        0, 0, 1, 1, 0, 0,
        0, 1, 1, 1, 0, 0,
        0, 1, 1, 0, 0, 0, 
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0
    };

    // show the initial state
    std::cout << "\nInitial state:" << std::endl;
    print_array(initial_state, row_length);
    
    // set the cryptocontext
    auto cc = lbcrypto::BinFHEContext();
    std::cerr << "\nGenerate cryptocontext" << std::endl;
    cc.GenerateBinFHEContext(lbcrypto::STD128);
    std::cerr << "Finished generating cryptocontext" << std::endl;
    
    // key generation
    auto sk = cc.KeyGen();
    std::cerr << "\nGenerating the bootstrapping keys..." << std::endl;
    cc.BTKeyGen(sk);
    std::cerr << "Completed the key generation" << std::endl;

    // encrypt the initial state
    std::cerr << "\nEncrypting the initial state..." << std::endl;
    std::vector<lbcrypto::LWECiphertext> enc_state;
    for (auto x: initial_state) {
        enc_state.push_back(cc.Encrypt(sk, x));
    }
    std::cerr << "Initial state encrypted" << std::endl;

    // evolve the situation homomorphically
    std::cerr << "\nEvolving for " << n_steps << " steps..." << std::endl;
    auto zero = cc.Encrypt(sk, false);
    for (unsigned int i=1; i<=n_steps; i++) {
        std::cerr << "step " << i << std::endl;
        enc_state = update(enc_state, row_length, zero, cc);
    }
    std::cerr << "Evolution done" << std::endl;
    
    // decrypt the result
    std::cerr << "\nDecrypting the final state..." << std::endl;
    std::vector<bool> final_state;
    lbcrypto::LWEPlaintext result;
    for (auto x: enc_state) {
        cc.Decrypt(sk, x, &result);
        final_state.push_back(result);
    }
    std::cerr << "Final state decrypted" << std::endl;
    
    // show the final state
    std::cout << "\nFinal state:" << std::endl;
    print_array(final_state, row_length);

    // estimate the runtime and energy cost on the Etech
    printf("\nRuntime on the Etech: %.2es\n", optalysys::get_total_runtime_antt());
    printf("Energy cost on the Etech: %.2eJ\n", optalysys::get_total_energy_cost_antt());

    return 0;
}
