#ifndef SIMULATORS_H_
#define SIMULATORS_H_

/**
 * @file
 * @brief C++ interface for the default simulators
 *
 * Must be compiled on a system where the double type matches the Real type of 
 * the FFT crate.
 *
 * Complex numbers are represented by doublets of 64-bits floating-point 
 * numbers, with the real part followed by the imaginary part.
 */

#ifndef __STDC_IEC_559__
#error "Requires IEEE 754 floating point!"
#endif

#ifdef __cplusplus
#define EXT extern "C"
#else
#define EXT extern
#include <stdbool.h>
#endif

/** @brief print basic infos about the library
 */
EXT void print_infos();

/** @brief numbers of simulators which are defined
 */
EXT unsigned int n_simulators();

/** @brief try to define a new simulator
 *
 *  return the simulator index if successful or 0 if not
 *
 *  @param accuracy target accuracy (in number of bits)
 *  @param size ft size
 */
EXT unsigned int define(unsigned int accuracy, unsigned long size);

/** @brief get the number of device frames used so far on the simulator
 *  @param index index of the simulator
 */
EXT unsigned long get_n_frames(unsigned int index);

/** @brief get the runtime on a simulator (in s)
 *  @param index index of the simulator
 */
EXT double get_runtime_s(unsigned int index);

/** @brief get the energy cost on a simulator (in J)
 *  @param index index of the simulator
 */
EXT double get_energy_cost_j(unsigned int index);

/** @brief return the total runtime for FT simulators (in s)
 */
EXT double get_total_runtime_ft();

/** @brief return the total energy cost for FT simulators (in J)
 */
EXT double get_total_energy_cost_ft();
 
/** @brief get the target accuracy of a simulator (in number of bits)
 *  @param index index of the simulator
 */
EXT unsigned int get_accuracy(unsigned int index);

/** @brief set the target accuracy of a simulator (in number of bits)
 *  @param index index of the simulator
 *  @param accuracy new target accuracy
 */
EXT void set_accuracy(unsigned int index, unsigned int accuracy);

/** @brief get the ft size for a simulator
 *  @param index index of the simulator
 */
EXT unsigned long get_ft_size(unsigned int index);

/** @brief attempt to perform an out-of-place inverse Fourier transform
 *  
 *  return `NULL` if fail
 *
 *  @param index index of the simulator
 *  @param x input (must be of size `2*ft_size`)
 */
EXT double* ft(unsigned int, const double*);

/** @brief attempt to perform an out-of-place inverse Fourier transform
 *
 *  return `NULL` if fail
 *
 *  @param index index of the simulator
 *  @param x input (must be of size `2*ft_size`)
 */
EXT double* ift(unsigned int index, const double* x);

/** @brief attempt to perform an out-of-place inverse Fourier transform without scaling 
 *
 *  return `NULL` if fail
 *
 *  @param index index of the simulator
 *  @param x input (must be of size `2*ft_size`)
 */
EXT double* ift_ns(unsigned int index, const double* x);

/** @brief attempt to perform an inplace Fourier transform 
 *
 *  return `NULL` if fail
 *
 * @param index index of the simulator
 * @param x input array (must be of size `2*ft_size`)
 * @param y output array (must be of size `2*ft_size`)
 */
EXT bool ft_inplace_stable(unsigned int index, const double* x, double* y);

/** @brief attempt to perform an inplace inverse Fourier transform 
 *
 * return `true` if successful or `false` if an error is produced on the Rust side
 *
 * @param index index of the simulator
 * @param x input array (must be of size `2*ft_size`)
 * @param y output array (must be of size `2*ft_size`)
 */
EXT bool ift_inplace_stable(unsigned int index, const double* x, double* y);

/** @brief attempt to perform an inplace inverse Fourier transform without rescaling
 *
 * return `true` if successful or `false` if an error is produced on the Rust side
 *
 * @param index index of the simulator
 * @param x input array (must be of size `2*ft_size`)
 * @param y output array (must be of size `2*ft_size`)
 */
EXT bool ift_inplace_stable_ns(unsigned int index, const double* x, double* y);

/** @brief attempt to perform a periodic convolution
 *  @param index index of the simulator
 *  @param x left input array (must be of size `2*ft_size`)
 *  @param y right input array (must be of size `2*ft_size`)
 */
EXT double* convolution(unsigned int index, const double* x, const double* y);

/** @brief attempt to perform an antiperiodic periodic convolution
 *
 *  return `NULL` if fail
 *
 *  @param index index of the simulator
 *  @param x left input array (must be of size `2*ft_size`)
 *  @param y right input array (must be of size `2*ft_size`)
 */
EXT double* polymult(unsigned int index, const double* x, const double* y);

/** @brief attempt to perform batched Fourier transforms 
 *
 *  return `NULL` if fail
 *
 *  @param index index of the simulator
 *  @param x input array
 *  @param n number of Fourier transforms
 */
EXT double* batched_ft(unsigned int index, const double* x, unsigned long n);

/** @brief attempt to perform batched inplace Fourier transforms 
 *
 * return `true` if successful or `false` if an error is produced on the Rust side
 * 
 * @param index index of the simulator
 * @param x input array
 * @param y output array
 * @param n number of Fourier transforms
 *
 * The second and third arguments must be of size `2*ft_size*n`
 */
EXT bool batched_ft_inplace_stable(unsigned int index, const double* x, double* y, unsigned long n);

/** @brief attempt to perform batched inverse Fourier transforms 
 *
 *  return `NULL` if fail
 *
 *  @param index index of the simulator
 *  @param x input array
 *  @param n number of inverse Fourier transforms
 */
EXT double* batched_ift(unsigned int index, const double* x, unsigned long n);

/** @brief attempt to perform batched inplace inverse Fourier transforms 
 *
 * return `true` if successful or `false` if an error is produced on the Rust side
 * 
 * @param index index of the simulator
 * @param x input array
 * @param y output array
 * @param n number of Fourier transforms
 *
 * The second and third arguments must be of size `2*ft_size*n`
 */
EXT bool batched_ift_inplace_stable(unsigned int index, const double* x, double* y, unsigned long n);

/** @brief attempt to perform batched inplace inverse Fourier transforms without rescaling
 *
 * return `true` if successful or `false` if an error is produced on the Rust side
 * 
 * @param index index of the simulator
 * @param x input array
 * @param y output array
 * @param n number of Fourier transforms
 *
 * The second and third arguments must be of size `2*ft_size*n`
 */
EXT bool batched_ift_inplace_stable_ns(unsigned int index, const double* x, double* y, unsigned long n);

/** @brief attempt to perform batched periodic convolutions 
 *  
 * return `NULL` if fail
 *
 * @param index index of the simulator
 * @param x left input array
 * @param y right input array
 * @param n number of convolutions
 *
 * The second and third arguments must be of size `2*ft_size*n`
 */
EXT double* batched_convolution(unsigned int index, const double* x, const double* y, unsigned long n);

/** @brief attempt to perform batched antiperiodic convolutions 
 *  
 * return `NULL` if fail
 *
 * @param index index of the simulator
 * @param x left input array
 * @param y right input array
 * @param n number of convolutions
 *
 * The second and third arguments must be of size `2*ft_size*n`
 */
EXT double* batched_polymult(unsigned int index, const double* x, const double* y, unsigned long n);

/** @brief set the numbers of levels and frames for the second frame splitting
 *  @param index index of the simulator
 *  @param n_levels number of levels
 *  @param n_frames number of frames
 */
EXT void set_n_levels_frames(unsigned int index, unsigned long n_levels, unsigned long n_frames);

#endif
