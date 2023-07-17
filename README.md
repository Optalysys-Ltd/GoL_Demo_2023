This is a work in progress fork of [OpenFHE](https://github.com/openfheorg/openfhe-development) with an added Game of Life example in implemented using the CKKS FHE scheme. 

## Build and run

The project can be run using CMake: 

```
mkdir -p build
cd build
cmake ..
make
```

The Game of Life demo can than be run *via*:
```
./build/bin/examples/pke/Conway_CKKS_2
```

A file with a starting configuration may be provided as argument, *e.g.*:
```
./build/bin/examples/pke/Conway_CKKS_2 example_starting_position.txt
```
