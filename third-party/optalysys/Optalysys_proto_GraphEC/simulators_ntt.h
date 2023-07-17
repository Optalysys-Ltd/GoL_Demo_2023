#ifndef SIMULATORS_NTT_H_
#define SIMULATORS_NTT_H_

/** @file
 *  @brief C++ interface for the default NTT simulators
 */

#ifdef __cplusplus
#define EXT extern "C"
#else
#define EXT extern
#include <stdbool.h>
#endif

/** @brief look for a primary nth root of unity modulo q
 *  
 *  Return 0 if none can be found;
 */
EXT unsigned long primary_root_unity(unsigned int n, unsigned long q);

/** @brief number of NTT simulators currently defined
 */
EXT unsigned int n_simulators_ntt();

/** @brief size of the NTT
 *  @argument i index of the simulator
 *  @return size of the NTT for the simulator i if it exists, or 0 otherwise
 */
EXT unsigned int get_ntt_size(unsigned int i);

/** @brief modulus of the NTT
 *  @argument i index of the simulator
 *  @return modulus of the NTT for the simulator i if it exists, or 0 otherwise
 */
EXT unsigned long get_ntt_modulus(unsigned int i);

/** @brief try to define a new simulator
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size
 *  @param omega first twiddle factor
 *  @param q modulus
 *  @param m internal ft size
 *  @param acc target accuracy (in number of bits)
 */
EXT unsigned int define_ntt(unsigned int n, unsigned long omega, unsigned long q, 
                            unsigned int m, unsigned int acc);

/** @brief try to define a new simulator (does not check the conditions on omega)
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size
 *  @param omega first twiddle factor
 *  @param q modulus
 *  @param m internal ft size
 *  @param acc target accuracy (in number of bits)
 */
EXT unsigned int define_ntt_no_check(unsigned int n, unsigned long omega, unsigned long q, 
                                     unsigned int m, unsigned int acc);

// /** @brief try to define a new simulator
//  *  
//  *  alternative version taking only three arguments
//  *
//  *  return the simulator index if successful or 0 if not
//  *  
//  *  @param n NTT size
//  *  @param omega first twiddle factor
//  *  @param q modulus
//  */
// EXT unsigned int define_ntt_b(unsigned int, unsigned long, unsigned long);

/** @brief define a new simulator only if one does not exist
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size (or logarithm in base 2, depending on the simulator used)
 *  @param omega first twiddle factor
 *  @param q modulus
 *  @param m Fourier transform size (if relevent)
 *  @param acc Fourier transform accuracy (if relevent)
 *
 *  Return the index of a simulator with size n and modulus k * n + 1, building a new one if none
 *  exists.
 */
EXT unsigned int get_or_define_ntt(unsigned int n, unsigned long omega, unsigned long q, 
                                   unsigned int m, unsigned int acc);

/** @brief try to define a new simulator
 *
 *  return the simulator index if successful or 0 if not
 *  
 *  @param n NTT size (or logarithm in base 2, depending on the simulator used)
 *  @param g generator
 *  @param k prefactor (the modulus is k * n + 1)
 *
 *  This function is currently only implemented for the simulator 3b, for which the parameter `n`
 *  is the logarithm of the NTT size.
 */
EXT unsigned int build_ntt(unsigned int n, unsigned long g, unsigned long k);

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
EXT unsigned int get_or_build_ntt(unsigned int n, unsigned long g, unsigned long k);

/** @brief divide an array by the NTT size
 *
 * @param index index of the simulator
 * @param x 
 * @param length length of `x`
 */
EXT void rescale_ntt(unsigned int index, unsigned long* x, unsigned int length);

/** @brief NTT function
 *
 *  return `NULL` if fails
 *
 * @param index index of the simulator
 * @param x input for the NTT
 */
EXT unsigned long* ntt(unsigned int index, unsigned long* x);

/** @brief inverse NTT function
 *
 *  return `NULL` if fails
 *
 * @param index index of the simulator
 * @param x input for the inverse NTT
 */
EXT unsigned long* intt(unsigned int index, unsigned long* x);

/** @brief return the total runtime for NTT simulators (in s)
 */
EXT double get_total_runtime_ntt();

/** @brief return the total energy cost for NTT simulators (in J)
 */
EXT double get_total_energy_cost_ntt();

#endif
