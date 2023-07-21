This is a work in progress fork of [OpenFHE](https://github.com/openfheorg/openfhe-development) with an added Game of Life example in implemented using the CKKS FHE scheme. 

For portability reasons, this example is a terminal-based app.

## Suggested exercise for the ‘Eyes Off Data’ demo

### 1. Run a first example (level: First FHE experience)

- Open a terminal (on Ubuntu, right-click then ‘open in terminal’)
- Ensure the the terminal can display at least 64 rows and 128 columns
  - On a large enough screen, opening the terminal in full screen should be enough.
  - If you're not sure, don't worry about this step - you'll be able to change the number of rows and columns later.

* Enter the `build` directory using the command

  ```
  cd build
  ```

* Launch the demo using

  ```
  LD_LIBRARY_PATH=./lib ./bin/examples/pke/Conway_CKKS_2 ../example_starting_position.txt
  ```

What you see on the screen is an implementation of [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life): a cellular automaton (broadly speaking, a set of cells which can be in one of two states ‘alive’ or ‘dead’, with the state of each cell updated at each iteration depending on that of the neighbouring cells). This is a very standard thing to implement on a computing system. Except there is a twist: in the implementation currently running in front of you, all calculations are done *on encrypted data*. More precisely, at each step, the state of the board is encrypted, updated in encrypted form, then decrypted to show the result.

Congratulations: you've successfully run your first FHE application!

### 2. Estimate the potential for optical acceleration (level: Intermediate)

As you may have noticed, the above demonstration runs quite slowly. This is because doing computations on encrypted data is way harder (in the sense that it requires much more computing power) than doing them on plaintext. Fortunately, this problem is currently being fixed. At Optalysys, we are developing specialised hardware for accelerating FHE computations using the power of optics. In this second step, you will estimate how fast the demo could run on optical hardware. 

Of course, the computer you are using right now does not have our optical accelerator - and that is why the demo runs somewhat slowly. But we have included a prototype optical simulator which can estimate how fast it would run on our optical system. To run the simulation with the optical simulator activated, enter

```
LD_LIBRARY_PATH=./lib ./bin/optalysys/Conway_CKKS_2_opt ../example_starting_position.txt
```

Once the simulation ends, it reports a runtime estimate - the time the whole simulation would have taken on the Optalysys hardware.

### 3. Experiment with different initial conditions (level: Intermediate)

The file `example_starting_position.txt` contains the initial situation for the simulation, with a `0` corresponding to a ‘dead’ cell and a `1` to a ‘live’ cell.

* **Exercise:** Modify the initial conditions file to check that ‘penta-decathlon’ (see [here](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)) is an *oscillator* (a structure which returns to its initial state after a given number of iterations).

### 4.  Change the rules (level: Advanced)

The source code for the demo can be found in

```
src/pke/examples/Conway_CKKS_2.cpp
```

The update function (used to compute the state of the board after each iteration) is: 

```cpp
template<typename T>
T update(const T& data, unsigned int rowLength, const CryptoContext<DCRTPoly>& cc) {

    // count the number of neighbours
    auto data_p = cc->EvalRotate(data, rowLength);
    auto data_m = cc->EvalRotate(data, -rowLength);
    auto n_neighbours = cc->EvalAdd(data_p, data_m);
    n_neighbours = cc->EvalAdd(n_neighbours, cc->EvalRotate(data_m, 1));
    n_neighbours = cc->EvalAdd(n_neighbours, cc->EvalRotate(data_m, -1));
    n_neighbours = cc->EvalAdd(n_neighbours, cc->EvalRotate(data, 1));
    n_neighbours = cc->EvalAdd(n_neighbours, cc->EvalRotate(data, -1));
    n_neighbours = cc->EvalAdd(n_neighbours, cc->EvalRotate(data_p, 1));
    n_neighbours = cc->EvalAdd(n_neighbours, cc->EvalRotate(data_p, -1));

    // evaluate x (x - 1) (x - 4) (x - 5) (x - 6) (x - 7) (x - 8)
    auto n_neighbours_1_4 = cc->EvalMult(cc->EvalAdd(n_neighbours, -1.), cc->EvalAdd(n_neighbours, -4.));
    auto n_neighbours_5_6 = cc->EvalMult(cc->EvalAdd(n_neighbours, -5.), cc->EvalAdd(n_neighbours, -6.));
    auto n_neighbours_7_8 = cc->EvalMult(cc->EvalAdd(n_neighbours, -7.), cc->EvalAdd(n_neighbours, -8.));
    auto n_neighbours_2_or_3 = cc->EvalMult(
        cc->EvalMult(n_neighbours, n_neighbours_1_4), 
        cc->EvalMult(n_neighbours_5_6, n_neighbours_7_8)
    );

    // evaluate x (x - 1) (x - 3) (x - 4) (x - 5) (x - 6) (x - 7) (x - 8) 
    // up to a normalisation factor
    auto n_neighbours_2 = cc->EvalMult(cc->EvalMult(n_neighbours_2_or_3, cc->EvalAdd(n_neighbours, -3.)), 1./(2.*2.*3.*4.*5.*6.));
    
    // evaluate x (x - 1) (x - 2) (x - 4) (x - 5) (x - 6) (x - 7) (x - 8)
    // up to a normalisation factor
    auto n_neighbours_3 = cc->EvalMult(cc->EvalMult(n_neighbours_2_or_3, cc->EvalAdd(n_neighbours, -2.)), -1./(3.*2.*2.*3.*4.*5.));

    // evaluate the update circuit
    auto result = cc->EvalAdd(n_neighbours_3, cc->EvalMult(data, n_neighbours_2));

    return result;
}
```

One can show that this function implements (homomorphically) the following rules:

* If a cell has exactly three live neighbours, its state updates to ‘live’.
* If a cell has exactly two live neighbours and if it is live itself, its state updates to ‘live’.
* Otherwise, its state updates to ‘dead’.

**Exercise:** Modify the update function so that a cell state updates to ‘live’ if it has two or three ‘live’ neighbours, independently of its own state.

### 5. With bootstrapping (level: Advanced)

 The above demo doe not use bootstrapping (a process used to ‘clean up’ encrypted data to be able to do more computations on it before decryption). This is not a problem here as we decrypt the board state after each update, but would be an issue for deeper calculations. We also provide an alternative version, `Conway_CKKS_3_opt` with a bootstrap done after each update. This version can  in principle run an arbitrary number of updates between two decryptions. 

**Exercise 1:** Run the `Conway_CKKS_3_opt` demo. (Generating the keys may take a while.)

**Exercise 2:** Look at the source code in `third-party/optalysys/interface/examples/Conway_CKKS_3_opt.cpp`. Apart from the bootstrap, you will notice that another difference is the `reduce_noise` function. Why is a noise-reducing function required in addition to the bootstrap?

***



## Build and run

The project can be run using CMake: 

```
mkdir -p build
cd build
cmake ..
make -j $(nproc)
```

The Game of Life demo can than be run with or without optical simulator *via*:
```
LD_LIBRARY_PATH=./build/lib ./build/bin/examples/pke/Conway_CKKS_2
```
or 
```
LD_LIBRARY_PATH=./build/lib ./build/bin/optalysys/Conway_CKKS_2_opt
```

(The part `LD_LIBRARY_PATH=./build/lib` is not required if OpenFHE is installed.)

A file with a starting configuration may be provided as argument, *e.g.*:
```
LD_LIBRARY_PATH=./build/lib ./build/bin/optalysys/Conway_CKKS_2_opt example_starting_position.txt
```

**NOTE:** The demo works better if the full array (64 rows by 128 columns) fits on one screen.

## Initial condition

The initial condition (if provided) must be made of 64 lines with 64 space-separated numbers equal to 0 or 1 each. (See [this example](./example_starting_position.txt)).
