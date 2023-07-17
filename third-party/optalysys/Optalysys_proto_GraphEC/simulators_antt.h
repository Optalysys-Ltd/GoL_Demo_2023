#ifndef SIMULATORS_ANTT_H_
#define SIMULATORS_ANTT_H_

/** @file
 *  @brief C++ interface for the default negacyclic NTT simulators
 */

#ifdef __cplusplus
#define EXT extern "C"
#else
#define EXT extern
#include <stdbool.h>
#endif

/** @brief number of negacyclic NTT simulators currently defined
 */
EXT unsigned int n_simulators_antt();

/** @brief size of the NTT
 *  @argument i index of the simulator
 *  @return size of the NTT for the simulator i if it exists, or 0 otherwise
 */
EXT unsigned int get_antt_size(unsigned int i);

/** @brief modulus of the NTT
 *  @argument i index of the simulator
 *  @return modulus of the NTT for the simulator i if it exists, or 0 otherwise
 */
EXT unsigned long get_antt_modulus(unsigned int i);

/** @brief try to define a new simulator
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size
 *  @param omega first twiddle factor
 *  @param q modulus
 */
EXT unsigned int define_antt(unsigned int n, unsigned long omega, unsigned long q);

/** @brief try to define a new simulator from the square root of the first twiddle factor
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size
 *  @param w square root of the first twiddle factor
 *  @param q modulus
 */
EXT unsigned int define_antt_no_check(unsigned int n, unsigned long w, unsigned long q);

/** @brief define a new simulator only if one does not exist
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size (or logarithm in base 2, depending on the simulator used)
 *  @param omega first twiddle factor
 *  @param q modulus
 *
 *  Return the index of a simulator with size n and modulus k * n + 1, building a new one if none
 *  exists.
 *
 *  This function is currently only implemented for the simulator 3b, for which the parameter `n`
 *  is the logarithm of the NTT size. 
 */
EXT unsigned int get_or_define_antt(unsigned int n, unsigned long omega, unsigned long q);

/** @brief define a new simulator from the square root of the first twiddle factor only if one 
 * does not exist
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size (or logarithm in base 2, depending on the simulator used)
 *  @param w square root of the first twiddle factor
 *  @param q modulus
 *
 *  Return the index of a simulator with size n and modulus k * n + 1, building a new one if none
 *  exists.
 *
 *  This function is currently only implemented for the simulator 3b, for which the parameter `n`
 *  is the logarithm of the NTT size. 
 */
EXT unsigned int get_or_define_antt_no_check(unsigned int n, unsigned long w, unsigned long q);

/** @brief try to define a new simulator
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size (or logarithm in base 2, depending on the simulator used)
 *  @param g generator
 *  @param k prefactor (the modulus is k * n + 1)
 *
 *  This function is currently only implemented for the simulator 3b, for which the parameter `n`
 */
EXT unsigned int build_antt(unsigned int n, unsigned long g, unsigned long k);

/** @brief build a new simulator only if one does not exist
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size (or logarithm in base 2, depending on the simulator used)
 *  @param g generator
 *  @param k prefactor (the modulus is k * n + 1)
 *
 *  Return the index of a simulator with size n and modulus k * n + 1, building a new one if none
 *  exists.
 *
 *  This function is currently only implemented for the simulator 3b, for which the parameter `n`
 *  is the logarithm of the NTT size. 
 */
EXT unsigned int get_or_build_antt(unsigned int n, unsigned long g, unsigned long k);

/** @brief divide an array by the NTT size
 *
 * @param index index of the simulator
 * @param x 
 * @param length length of `x`
 */
EXT void rescale_antt(unsigned int index, unsigned long* x, unsigned int length);

/** @brief negacyclic NTT
 *
 *  return `NULL` if fails
 *
 * @param index index of the simulator
 * @param x input for the NTT
 * @param length length of `x`
 */
EXT unsigned long* antt(unsigned int index, unsigned long* x, unsigned int length);

/** @brief inverse negacyclic NTT
 *
 *  return `NULL` if fails
 *
 * @param index index of the simulator
 * @param x input for the inverse NTT
 * @param length length of `x`
 */
EXT unsigned long* iantt(unsigned int index, unsigned long* x, unsigned int length);

/** @brief inplace negacyclic NTT
 * @param index index of the simulator
 * @param x input for the NTT
 * @param y output for the NTT
 * @param length length of `x`
 */
EXT void antt_inplace(unsigned int index, const unsigned long* x, unsigned long* y, unsigned int length);

/** @brief inverse inplace negacyclic NTT
 * @param index index of the simulator
 * @param x input for the inverse NTT
 * @param y output for the NTT
 * @param length length of `x`
 */
EXT void iantt_inplace(unsigned int index, const unsigned long* x, unsigned long* y, unsigned int length);

/** @brief inplace disordered negacyclic NTT
 * @param index index of the simulator
 * @param x input for the NTT
 * @param y output for the NTT
 * @param length length of `x`
 */
EXT void dis_antt_inplace(unsigned int index, const unsigned long* x, unsigned long* y, unsigned int length);

/** @brief inverse inplace disordered negacyclic NTT up to a scale factor
 * @param index index of the simulator
 * @param x input for the inverse NTT
 * @param y output for the NTT
 * @param length length of `x`
 */
EXT void inv_dis_antt_inplace_ns(unsigned int index, const unsigned long* x, unsigned long* y, unsigned int length);

/** @brief inverse inplace disordered negacyclic NTT
 * @param index index of the simulator
 * @param x input for the inverse NTT
 * @param y output for the NTT
 * @param length length of `x`
 */
EXT void inv_dis_antt_inplace(unsigned int index, const unsigned long* x, unsigned long* y, unsigned int length);

/** @brief inplace disordered negacyclic NTT
 * @param index index of the simulator
 * @param x input for the NTT
 * @param length length of `x`
 */
EXT void dis_antt_self(unsigned int index, unsigned long* x, unsigned int length);

/** @brief inverse inplace disordered negacyclic NTT up to a scale factor
 * @param index index of the simulator
 * @param x input for the inverse NTT
 * @param length length of `x`
 */
EXT void inv_dis_antt_self_ns(unsigned int index, unsigned long* x, unsigned int length);

/** @brief inverse inplace disordered negacyclic NTT
 * @param index index of the simulator
 * @param x input for the inverse NTT
 * @param length length of `x`
 */
EXT void inv_dis_antt_self(unsigned int index, unsigned long* x, unsigned int length);

/** @brief return the total runtime for ANTT simulators (in s)
 */
EXT double get_total_runtime_antt();

/** @brief return the total energy cost for ANTT simulators (in J)
 */
EXT double get_total_energy_cost_antt();

#endif
