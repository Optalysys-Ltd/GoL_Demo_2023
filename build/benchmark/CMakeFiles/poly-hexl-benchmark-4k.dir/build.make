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
include benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/depend.make

# Include the progress variables for this target.
include benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/progress.make

# Include the compile flags for this target's objects.
include benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/flags.make

benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.o: benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/flags.make
benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.o: ../benchmark/src/poly-hexl-benchmark-4k.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.o"
	cd /home/florent/GoL_Demo_2023/build/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.o -c /home/florent/GoL_Demo_2023/benchmark/src/poly-hexl-benchmark-4k.cpp

benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.i"
	cd /home/florent/GoL_Demo_2023/build/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/florent/GoL_Demo_2023/benchmark/src/poly-hexl-benchmark-4k.cpp > CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.i

benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.s"
	cd /home/florent/GoL_Demo_2023/build/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/florent/GoL_Demo_2023/benchmark/src/poly-hexl-benchmark-4k.cpp -o CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.s

# Object files for target poly-hexl-benchmark-4k
poly__hexl__benchmark__4k_OBJECTS = \
"CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.o"

# External object files for target poly-hexl-benchmark-4k
poly__hexl__benchmark__4k_EXTERNAL_OBJECTS =

bin/benchmark/poly-hexl-benchmark-4k: benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/src/poly-hexl-benchmark-4k.cpp.o
bin/benchmark/poly-hexl-benchmark-4k: benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/build.make
bin/benchmark/poly-hexl-benchmark-4k: lib/libOPENFHEpke.so.1.0.1
bin/benchmark/poly-hexl-benchmark-4k: lib/libOPENFHEbinfhe.so.1.0.1
bin/benchmark/poly-hexl-benchmark-4k: lib/libOPENFHEcore.so.1.0.1
bin/benchmark/poly-hexl-benchmark-4k: lib/libbenchmark.a
bin/benchmark/poly-hexl-benchmark-4k: /usr/lib/x86_64-linux-gnu/librt.a
bin/benchmark/poly-hexl-benchmark-4k: benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/benchmark/poly-hexl-benchmark-4k"
	cd /home/florent/GoL_Demo_2023/build/benchmark && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/poly-hexl-benchmark-4k.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/build: bin/benchmark/poly-hexl-benchmark-4k

.PHONY : benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/build

benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/clean:
	cd /home/florent/GoL_Demo_2023/build/benchmark && $(CMAKE_COMMAND) -P CMakeFiles/poly-hexl-benchmark-4k.dir/cmake_clean.cmake
.PHONY : benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/clean

benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/depend:
	cd /home/florent/GoL_Demo_2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023/benchmark /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build/benchmark /home/florent/GoL_Demo_2023/build/benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmark/CMakeFiles/poly-hexl-benchmark-4k.dir/depend

