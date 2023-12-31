# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.18
cmake_policy(SET CMP0009 NEW)

# BMARK_SRC_FILES at benchmark/CMakeLists.txt:23 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/benchmark/src/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/benchmark/src/IntegerMath.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/Lattice.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/NbTheory.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/VectorMath.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/bfv-mult-method-benchmark.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/binfhe-ap.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/binfhe-ginx.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/compare-bfv-hps-leveled-vs-behz.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/compare-bfvrns-vs-bgvrns.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/lib-benchmark.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/lib-hexl-benchmark.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/mult-vs-square.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/poly-benchmark-16k.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/poly-benchmark-1k.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/poly-benchmark-4k.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/poly-benchmark-64k.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/poly-hexl-benchmark-16k.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/poly-hexl-benchmark-4k.cpp"
  "/home/florent/GoL_Demo_2023/benchmark/src/serialize-ckks.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# BINFHE_EXAMPLES_SRC_FILES at src/binfhe/CMakeLists.txt:75 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/src/binfhe/examples/*.cpp")
set(OLD_GLOB
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# BINFHE_SRC_FILES at src/binfhe/CMakeLists.txt:6 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/src/binfhe/lib/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/binfhe-base-scheme.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/binfhe-constants-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/binfhecontext.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/lwe-pke.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/rgsw-acc-cggi.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/rgsw-acc-dm.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/rgsw-acc.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/lib/rgsw-cryptoparameters.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# BINFHE_TEST_SRC_FILES at src/binfhe/CMakeLists.txt:59 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/src/binfhe/unittest/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEW.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWDeep.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWSerial.cpp"
  "/home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFunc.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# CORE_EXAMPLES_SRC_FILES at src/core/CMakeLists.txt:90 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/src/core/examples/*.cpp")
set(OLD_GLOB
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# CORE_TEST_SRC_FILES at src/core/CMakeLists.txt:72 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/src/core/unittest/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTest128.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestBinInt.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestBinVect.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestBlockAllocate.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestCommonElements.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestDCRTElements.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestDistrGen.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestException.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestField2n.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestLatticeParams.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestMatrix.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestMubintvec.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestNTT.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestNbTheory.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestPolyElements.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestSTLBlockAllocate.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestSerialize.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestTransform.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestTrapdoor.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestUtils.cpp"
  "/home/florent/GoL_Demo_2023/src/core/unittest/UnitTestXallocate.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# PKE_EXAMPLES_SRC_FILES at src/pke/CMakeLists.txt:80 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/src/pke/examples/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/pke/examples/Conway_BFV.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/examples/Conway_CKKS.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/examples/Conway_CKKS_2.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/examples/Conway_CKKS_3.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/examples/linearwsum-evaluation.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/examples/rotation.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# OPT_EXAMPLES_SRC_FILES at third-party/optalysys/interface/CMakeLists.txt:26 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway_BFV.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway_CKKS.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway_CKKS_2.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway_CKKS_3.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Logistic_Regression_CKKS_1.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Logistic_Regression_CKKS_2.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Logistic_Regression_CKKS_3.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Logistic_Regression_CKKS_car_sale.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Password_Check_BFV.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/benchmark_oft_1.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# CORE_SRC_FILES at src/core/CMakeLists.txt:6 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/florent/GoL_Demo_2023/src/core/lib/*.c")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/prng/blake2b-ref.c"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/prng/blake2xb-ref.c"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# CORE_SRC_FILES at src/core/CMakeLists.txt:6 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/florent/GoL_Demo_2023/src/core/lib/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/be2-poly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/be4-poly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/be6-poly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/benative-poly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/dgsampling.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/elemparamfactory.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/elemparams.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/field2n.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/hal/default/dcrtpoly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/hal/default/dcrtpoly.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/hal/hexl/hexldcrtpoly.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/ildcrtparams.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/ilparams.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/matrix-lattice-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/poly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/poly.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/stdlatticeparms.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/trapdoor-dcrtpoly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/trapdoor-poly-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/lattice/trapdoor.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/binaryuniformgenerator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/chebyshev.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/dftransform.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/discretegaussiangenerator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/discretegaussiangeneratorgeneric.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/discreteuniformgenerator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/distributiongenerator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintdyn/be4-math-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintdyn/mubintvecdyn.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintdyn/ubintdyn.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintfxd/be2-math-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintfxd/mubintvecfxd.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintfxd/ubintfxd.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintntl/be6-math-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintntl/mubintvecntl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/bigintntl/ubintntl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/intnat-hexl/benativehexl-math-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/intnat-hexl/mubintvecnathexl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/intnat-hexl/ubintnathexl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/intnat/benative-math-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/intnat/mubintvecnat.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/hal/intnat/ubintnat.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/matrix-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/matrix.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/matrixstrassen.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/nbtheory.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/nbtheory2.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/math/ternaryuniformgenerator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/blockAllocator/blockAllocator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/blockAllocator/xallocator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/debug.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/demangle.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/hashutil.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/inttypes.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/openfhebase64.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/parallel.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/utilities.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# CORE_SRC_FILES at src/core/CMakeLists.txt:6 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/florent/GoL_Demo_2023/src/core/lib/utils/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/blockAllocator/blockAllocator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/blockAllocator/xallocator.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/debug.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/demangle.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/hashutil.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/inttypes.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/openfhebase64.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/parallel.cpp"
  "/home/florent/GoL_Demo_2023/src/core/lib/utils/utilities.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# PKE_SRC_FILES at src/pke/CMakeLists.txt:6 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/florent/GoL_Demo_2023/src/pke/lib/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/pke/lib/ciphertext-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/constants-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/cryptocontext.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/cryptocontextfactory.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/cryptoobject-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/encoding/ckkspackedencoding.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/encoding/coefpackedencoding.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/encoding/encodingparams.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/encoding/packedencoding.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/encoding/stringencoding.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/globals-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/key/evalkey.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/key/evalkeyrelin.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/key/privatekey.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/key/publickey.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/keyswitch/keyswitch-base.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/keyswitch/keyswitch-bv.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/keyswitch/keyswitch-hybrid.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bfvrns/bfvrns-cryptoparameters.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bfvrns/bfvrns-leveledshe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bfvrns/bfvrns-multiparty.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bfvrns/bfvrns-parametergeneration.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bfvrns/bfvrns-pke.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bfvrns/bfvrns-scheme.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bgvrns/bgvrns-cryptoparameters.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bgvrns/bgvrns-leveledshe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bgvrns/bgvrns-multiparty.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bgvrns/bgvrns-parametergeneration.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bgvrns/bgvrns-pke.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/bgvrns/bgvrns-scheme.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-advancedshe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-cryptoparameters.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-fhe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-leveledshe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-multiparty.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-parametergeneration.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-pke.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-scheme.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/ckksrns/ckksrns-utils.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/cryptocontextparams-base-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/scheme/scheme-id-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-advancedshe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-cryptoparameters.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-fhe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-leveledshe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-multiparty.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-parametergeneration.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-pke.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-pre.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/base-scheme.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemebase/rlwe-cryptoparameters-impl.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemerns/rns-cryptoparameters.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemerns/rns-leveledshe.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemerns/rns-multiparty.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/lib/schemerns/rns-pke.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# PKE_TEST_SRC_FILES at src/pke/CMakeLists.txt:62 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/florent/GoL_Demo_2023/src/pke/unittest/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestENCRYPT.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestEncoding.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestEvalMult.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestEvalMultMany.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestMultihopPRE.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestMultiparty.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestPRE.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/UnitTestSHE.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbfvrns/UnitTestBFVrnsAutomorphism.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbfvrns/UnitTestBFVrnsCRTOperations.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbfvrns/UnitTestBFVrnsDecrypt.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbfvrns/UnitTestBFVrnsSerialize.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbgvrns/UnitTestBGVrns.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbgvrns/UnitTestBGVrnsAdvancedSHE.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbgvrns/UnitTestBGVrnsAutomorphism.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utbgvrns/UnitTestBGVrnsSerialize.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utckksrns/UnitTestBootstrap.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utckksrns/UnitTestCKKSrns.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utckksrns/UnitTestCKKSrnsAutomorphism.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utckksrns/UnitTestCKKSrnsSerialize.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utckksrns/UnitTestNoiseFlooding.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utckksrns/UnitTestPoly.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utils/UnitTestCCParams.cpp"
  "/home/florent/GoL_Demo_2023/src/pke/unittest/utils/UnitTestCryptoContext.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# OPTALYSYS_INTERFACE_SRC_FILES at third-party/optalysys/interface/CMakeLists.txt:4 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/lib/*.c")
set(OLD_GLOB
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()

# OPTALYSYS_INTERFACE_SRC_FILES at third-party/optalysys/interface/CMakeLists.txt:4 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/lib/*.cpp")
set(OLD_GLOB
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/lib/dftransform.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/lib/intnat-optalysys/mubintvecnat.cpp"
  "/home/florent/GoL_Demo_2023/third-party/optalysys/interface/lib/intnat-optalysys/ubintnat.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/florent/GoL_Demo_2023/build/CMakeFiles/cmake.verify_globs")
endif()
