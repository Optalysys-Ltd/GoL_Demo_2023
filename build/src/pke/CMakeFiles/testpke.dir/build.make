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

# Utility rule file for testpke.

# Include the progress variables for this target.
include src/pke/CMakeFiles/testpke.dir/progress.make

src/pke/CMakeFiles/testpke: unittest/pke_tests
src/pke/CMakeFiles/testpke: src/pke/runpketests


src/pke/runpketests:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating runpketests"
	/home/florent/GoL_Demo_2023/build/unittest/pke_tests

testpke: src/pke/CMakeFiles/testpke
testpke: src/pke/runpketests
testpke: src/pke/CMakeFiles/testpke.dir/build.make

.PHONY : testpke

# Rule to build all files generated by this target.
src/pke/CMakeFiles/testpke.dir/build: testpke

.PHONY : src/pke/CMakeFiles/testpke.dir/build

src/pke/CMakeFiles/testpke.dir/clean:
	cd /home/florent/GoL_Demo_2023/build/src/pke && $(CMAKE_COMMAND) -P CMakeFiles/testpke.dir/cmake_clean.cmake
.PHONY : src/pke/CMakeFiles/testpke.dir/clean

src/pke/CMakeFiles/testpke.dir/depend:
	cd /home/florent/GoL_Demo_2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023/src/pke /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build/src/pke /home/florent/GoL_Demo_2023/build/src/pke/CMakeFiles/testpke.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pke/CMakeFiles/testpke.dir/depend

