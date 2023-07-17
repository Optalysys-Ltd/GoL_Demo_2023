/**
 * @brief Simple password security check demo. 
 * 
 * Given a password and a list of compromised passwords, we want to
 *  * hash and encrypt the password
 *  * see homomorphically if it is in the list of compromised ones
 *  * decrypt the result
 *
 * This is an early prototype demo, which only works if the list of leaked passwords is small.
 */

#include <iostream>
#include <vector>
#include <string>

/** @brief a simple hash function
 * 
 * Adapted from https://stackoverflow.com/questions/20511347/a-good-hash-function-for-a-vector/72073933#72073933 and https://stackoverflow.com/questions/664014/what-integer-hash-function-are-good-that-accepts-an-integer-hash-key/12996028#12996028
 *
 * WARNING: This function is NOT secure! To be used for demonstration only.
 */
uint64_t hash_fun(const std::string password) {
    uint64_t seed = password.size();
    for (auto e: password) {
        uint64_t x = (std::size_t) e;
        x = ((x >> 30) ^ x) * UINT64_C(0xbf58476d1ce4e5b9);
        x = ((x >> 27) ^ x) * UINT64_C(0x94d049bb133111eb);
        x = (x >> 31) ^ x;
        seed ^= x + 0x9e3779b9 + (seed << 14) + (seed >> 6);
    }
    return seed;
}

/** @brief make n copies of the message to benefit from ciphertext packing
 */
// std::vector<char> demultiply(const size_t message, const unsigned int n) {
//     // TO IMPLEMENT
// }

/** @brief see homomorphically if a message is in a set
 */
// template<typename T>
// T check(const T& message, const unsigned int message_length, const unsigned int n_pwd
//         const std::vector<double> list_pwd, const CryptoContext<DCRTPoly>& cc) 
// {
//     // subtract the message from the list of (hashed) leaked passwords
//     // TO DO
// 
//     // // take the square of the result
//     // // TO DO
// 
//     // // rotate left by 1 and sum, `message_length-1` times
//     // // TO DO
//     
//     // rotate left by 2^i `message_length` and multiply, for i between 0 and ceil(log_2(n_pwd)) - 1
//     // TO DO
// 
//     // set all entries to 0 except the first one to avoid leaking more information about the leaked 
//     // passwords (not very useful for this application)
//     // TO DO
//     
//     // return the result
//     // TO DO
// }


int main() {

    // get the list of hashes of leaked passwords from `leaked_pwds.txt`
    // TO DO

    // turn the list into a plaintext
    // TO DO

    // get a password to check from the user
    std::cout << "Password: ";
    std::string password;
    std::cin >> password;

    // hash the password
    const uint64_t pwd_hash = hash_fun(password);    
    std::cout << "Password hash: " << std::hex << pwd_hash << std::dec << std::endl;

    // demultiply the hashed password
    // TO DO

    // encrypt the password
    // TO DO

    // check homomorphically if the password is in the list of leaked ones
    // TO DO

    // decrypt the result
    // TO DO

    // tell the user if the password has been leaked or not
    // TO DO

    return 0;
}
