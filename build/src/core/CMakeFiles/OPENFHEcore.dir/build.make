# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/florent/GoL_Demo_2023

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/florent/GoL_Demo_2023/build

# Include any dependencies generated for this target.
include src/core/CMakeFiles/OPENFHEcore.dir/depend.make

# Include the progress variables for this target.
include src/core/CMakeFiles/OPENFHEcore.dir/progress.make

# Include the compile flags for this target's objects.
include src/core/CMakeFiles/OPENFHEcore.dir/flags.make

# Object files for target OPENFHEcore
OPENFHEcore_OBJECTS =

# External object files for target OPENFHEcore
OPENFHEcore_EXTERNAL_OBJECTS = \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/be2-poly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/be4-poly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/be6-poly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/benative-poly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/dgsampling.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/elemparamfactory.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/elemparams.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/field2n.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/hal/default/dcrtpoly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/hal/default/dcrtpoly.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/hal/hexl/hexldcrtpoly.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/ildcrtparams.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/ilparams.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/matrix-lattice-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/poly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/poly.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/stdlatticeparms.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-dcrtpoly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-poly-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/binaryuniformgenerator.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/chebyshev.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/dftransform.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/discretegaussiangenerator.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/discretegaussiangeneratorgeneric.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/discreteuniformgenerator.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/distributiongenerator.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/be4-math-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/mubintvecdyn.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/ubintdyn.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/be2-math-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/mubintvecfxd.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/ubintfxd.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/be6-math-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/mubintvecntl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/ubintntl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat-hexl/benativehexl-math-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat-hexl/mubintvecnathexl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat-hexl/ubintnathexl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/benative-math-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/mubintvecnat.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/ubintnat.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/matrix-impl.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/matrix.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/matrixstrassen.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/nbtheory.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/nbtheory2.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/math/ternaryuniformgenerator.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/blockAllocator.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/xallocator.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/debug.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/demangle.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/hashutil.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/inttypes.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/openfhebase64.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/parallel.cpp.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2b-ref.c.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2xb-ref.c.o" \
"/home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/coreobj.dir/lib/utils/utilities.cpp.o"

lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/be2-poly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/be4-poly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/be6-poly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/benative-poly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/dgsampling.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/elemparamfactory.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/elemparams.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/field2n.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/hal/default/dcrtpoly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/hal/default/dcrtpoly.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/hal/hexl/hexldcrtpoly.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/ildcrtparams.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/ilparams.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/matrix-lattice-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/poly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/poly.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/stdlatticeparms.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-dcrtpoly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-poly-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/binaryuniformgenerator.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/chebyshev.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/dftransform.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/discretegaussiangenerator.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/discretegaussiangeneratorgeneric.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/discreteuniformgenerator.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/distributiongenerator.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/be4-math-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/mubintvecdyn.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/ubintdyn.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/be2-math-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/mubintvecfxd.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/ubintfxd.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/be6-math-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/mubintvecntl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/ubintntl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat-hexl/benativehexl-math-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat-hexl/mubintvecnathexl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat-hexl/ubintnathexl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/benative-math-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/mubintvecnat.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/ubintnat.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/matrix-impl.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/matrix.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/matrixstrassen.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/nbtheory.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/nbtheory2.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/math/ternaryuniformgenerator.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/blockAllocator.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/xallocator.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/debug.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/demangle.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/hashutil.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/inttypes.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/openfhebase64.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/parallel.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2b-ref.c.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2xb-ref.c.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/coreobj.dir/lib/utils/utilities.cpp.o
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/OPENFHEcore.dir/build.make
lib/libOPENFHEcore.so.1.0.1: lib/liboptalysys_interface.a
lib/libOPENFHEcore.so.1.0.1: ../third-party/optalysys/Optalysys_proto_GraphEC/libproto_graphec.a
lib/libOPENFHEcore.so.1.0.1: src/core/CMakeFiles/OPENFHEcore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library ../../lib/libOPENFHEcore.so"
	cd /home/florent/GoL_Demo_2023/build/src/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OPENFHEcore.dir/link.txt --verbose=$(VERBOSE)
	cd /home/florent/GoL_Demo_2023/build/src/core && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libOPENFHEcore.so.1.0.1 ../../lib/libOPENFHEcore.so.1 ../../lib/libOPENFHEcore.so

lib/libOPENFHEcore.so.1: lib/libOPENFHEcore.so.1.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libOPENFHEcore.so.1

lib/libOPENFHEcore.so: lib/libOPENFHEcore.so.1.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libOPENFHEcore.so

# Rule to build all files generated by this target.
src/core/CMakeFiles/OPENFHEcore.dir/build: lib/libOPENFHEcore.so

.PHONY : src/core/CMakeFiles/OPENFHEcore.dir/build

src/core/CMakeFiles/OPENFHEcore.dir/clean:
	cd /home/florent/GoL_Demo_2023/build/src/core && $(CMAKE_COMMAND) -P CMakeFiles/OPENFHEcore.dir/cmake_clean.cmake
.PHONY : src/core/CMakeFiles/OPENFHEcore.dir/clean

src/core/CMakeFiles/OPENFHEcore.dir/depend:
	cd /home/florent/GoL_Demo_2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023/src/core /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build/src/core /home/florent/GoL_Demo_2023/build/src/core/CMakeFiles/OPENFHEcore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/core/CMakeFiles/OPENFHEcore.dir/depend

