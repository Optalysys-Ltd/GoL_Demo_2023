/**
 * @brief A Game of Life example without bootstrapping.
 */

#include "openfhe.h"

using namespace lbcrypto;

template<typename T>
std::vector<T> update(const std::vector<T>& data, const CryptoContext<DCRTPoly>& cc) {

    std::vector<T> result;
    for (unsigned int i=0; i<data.size(); i++) {
        unsigned int im = i==0 ? data.size()-1 : i-1;
        unsigned int ip = i==data.size()-1 ? 0 : i+1;
        
        // count the number of neighbours
        auto row = cc->EvalAdd(data[ip], data[im]);
        row = cc->EvalAdd(row, cc->EvalRotate(data[im], 1));
        row = cc->EvalAdd(row, cc->EvalRotate(data[im], -1));
        row = cc->EvalAdd(row, cc->EvalRotate(data[i], 1));
        row = cc->EvalAdd(row, cc->EvalRotate(data[i], -1));
        row = cc->EvalAdd(row, cc->EvalRotate(data[ip], 1));
        row = cc->EvalAdd(row, cc->EvalRotate(data[ip], -1));

        // evaluate x (x - 1) (x - 4) (x - 5) (x - 6) (x - 7) (x - 8)
        auto row_1_4 = cc->EvalMult(cc->EvalAdd(row, -1.), cc->EvalAdd(row, -4.));
        auto row_5_6 = cc->EvalMult(cc->EvalAdd(row, -5.), cc->EvalAdd(row, -6.));
        auto row_7_8 = cc->EvalMult(cc->EvalAdd(row, -7.), cc->EvalAdd(row, -8.));
        auto row_2_or_3 = cc->EvalMult(
            cc->EvalMult(row, row_1_4), 
            cc->EvalMult(row_5_6, row_7_8)
        );

        // evaluate x (x - 1) (x - 3) (x - 4) (x - 5) (x - 6) (x - 7) (x - 8) 
        // up to a normalisation factor
        auto row_2 = cc->EvalMult(cc->EvalMult(row_2_or_3, cc->EvalAdd(row, -3.)), 1./(2.*2.*3.*4.*5.*6.));
        
        // evaluate x (x - 1) (x - 2) (x - 4) (x - 5) (x - 6) (x - 7) (x - 8) / A
        // up to a normalisation factor
        auto row_3 = cc->EvalMult(cc->EvalMult(row_2_or_3, cc->EvalAdd(row, -2.)), -1./(3.*2.*2.*3.*4.*5.));

        // evaluate the update circuit
        result.push_back(cc->EvalAdd(row_3, cc->EvalMult(data[i], row_2)));
    }

    return result;
}

int main() {

    // length of each row
    const uint32_t rowLength = 64;

    // number of steps
    const unsigned int nSteps = 40;

    // set-up the CryptoContext
    const uint32_t multDepth = 6;
    const uint32_t scaleModSize = 30;
    const uint32_t batchSize = rowLength;
    CCParams<CryptoContextCKKSRNS> parameters;
    parameters.SetMultiplicativeDepth(multDepth);
    parameters.SetScalingModSize(scaleModSize);
    parameters.SetBatchSize(batchSize);
    CryptoContext<DCRTPoly> cc = GenCryptoContext(parameters);
    cc->Enable(PKE);
    cc->Enable(KEYSWITCH);
    cc->Enable(LEVELEDSHE);
    std::cout << "CKKS scheme is using ring dimension " << cc->GetRingDimension() << std::endl << std::endl;

    // generate the keys
    std::cout << "Generating the keys..." << std::endl;
    auto keys = cc->KeyGen();
    cc->EvalMultKeyGen(keys.secretKey);
    cc->EvalRotateKeyGen(keys.secretKey, {1, -1});
    std::cout << "Keys generated" << std::endl;

    // initial state
    std::vector<double> board_state({
        0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0.,
        0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 0., 0.,
        0., 0., 1., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 0.,
        0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0.,
        0., 0., 1., 1., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0.,
        0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0.,
        0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 1., 1., 0.,
        0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 1., 1., 0.,
    });
    
    for (unsigned int step = 0; step < nSteps; step++) {

        std::cout << "\nBoard state:" << std::endl;
        for (unsigned int i = 0; i < board_state.size() / rowLength; i++) {
            for (unsigned int j = 0; j < rowLength; j++) {
                std::cout << (board_state[i*rowLength+j] == 1. ? "■ " : "· ");
            }
            std::cout << std::endl;
        }
        
        // encrypt the board state 
        // We encrypt one row per ciphertext.
        std::cout << "\nEncrypt the board state" << std::endl;
        std::vector<Ciphertext<DCRTPolyImpl<bigintdyn::mubintvec<bigintdyn::ubint<unsigned int>>>>> rows_enc;
        for (unsigned int i = 0; i < board_state.size() / rowLength; i++) {
            std::vector<double> row(board_state.begin() + i*rowLength, board_state.begin() + (i+1)*rowLength);
            Plaintext p = cc->MakeCKKSPackedPlaintext(row);
            rows_enc.push_back(cc->Encrypt(keys.publicKey, p));
        }
        std::cout << "Board state encrypted" << std::endl;

        // update the state
        std::cout << "Update the board state" << std::endl;
        auto rows_enc_updated = update(rows_enc, cc);
        std::cout << "Board state updated" << std::endl;

        // decrypt the result
        std::cout << "Decrypt the result" << std::endl;
        Plaintext result;
        unsigned int i = 0;
        for (auto row: rows_enc_updated) {
            cc->Decrypt(keys.secretKey, row, &result);
            for (auto x: (*result).GetRealPackedValue()) {
                board_state[i] = (int) (x + 0.5);
                ++i;
            }
        }
        std::cout << "Result decrypted" << std::endl;
    }
    
    std::cout << "\nFinal state:" << std::endl;
    for (unsigned int i = 0; i < board_state.size() / rowLength; i++) {
        for (unsigned int j = 0; j < rowLength; j++) {
                std::cout << (board_state[i*rowLength+j] == 1. ? "■ " : "· ");
        }
        std::cout << std::endl;
    }
    
    return 0;
}
