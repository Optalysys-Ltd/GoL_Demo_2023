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

# Utility rule file for alloptexamples.

# Include the progress variables for this target.
include third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/progress.make

alloptexamples: third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/build.make

.PHONY : alloptexamples

# Rule to build all files generated by this target.
third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/build: alloptexamples

.PHONY : third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/build

third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/clean:
	cd /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface && $(CMAKE_COMMAND) -P CMakeFiles/alloptexamples.dir/cmake_clean.cmake
.PHONY : third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/clean

third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/depend:
	cd /home/florent/GoL_Demo_2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023/third-party/optalysys/interface /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/optalysys/interface/CMakeFiles/alloptexamples.dir/depend

