# OpenFHE interface for the Optalysys simulator

## The interface

This is an interface between the OpenFHE library and the Optalysys optical Fourier transform simulator. 
This interface does three things: 

* Import the Optalysys simulator and relevant functions in a new namespace `Opt`.
* Define a new class `OptDiscreteFourierTransform` in the `lbcrypto` namespace.
* Replace the use of `lbcrypto::DiscreteFourierTransform` by `lbcrypto::OptDiscreteFourierTransform` in `core`.

The `OptDiscreteFourierTransform` provides the same functionalities than `DiscreteFourierTransform` but makes use of the Optalysys OFT simulator for computing FFTs. 
It also provides the function `runtime_Etech_s` returning an estimate of the total runtime (in seconds) on the Optalysys Etech™.

## How to use

To use it, compile OpenFHE with the `OPTALYSYS_SIM` option set to `ON`. For instance, from the OpenFHE main directory, run
```
mkdir -p build
cd build
cmake -DOPTALYSYS_SIM=ON ..
make
```

Use of the `lbcrypto::DiscreteFourierTransform` is then replaced by `lbcrypto::OptDiscreteFourierTransform`, performing direct and inverse Fourier transforms using the Optalysys simulator in `core`.

An example of how to use the new class and estimate the runtime on the Etech™ is shown in `examples/benchmark_oft_1.cpp` (compiling by default to `build/bin/optalysys/benchmark_oft_1`).

## Roadmap

* Implement an interface for the NTT
* Link the interface with BFV
* Link the interface with BGV
* Link the interface with CKKS
