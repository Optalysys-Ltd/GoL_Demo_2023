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

# Utility rule file for allmodules.

# Include the progress variables for this target.
include CMakeFiles/allmodules.dir/progress.make

CMakeFiles/allmodules: lib/libOPENFHEcore.so.1.0.1
CMakeFiles/allmodules: lib/libOPENFHEpke.so.1.0.1
CMakeFiles/allmodules: lib/libOPENFHEbinfhe.so.1.0.1


allmodules: CMakeFiles/allmodules
allmodules: CMakeFiles/allmodules.dir/build.make

.PHONY : allmodules

# Rule to build all files generated by this target.
CMakeFiles/allmodules.dir/build: allmodules

.PHONY : CMakeFiles/allmodules.dir/build

CMakeFiles/allmodules.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/allmodules.dir/cmake_clean.cmake
.PHONY : CMakeFiles/allmodules.dir/clean

CMakeFiles/allmodules.dir/depend:
	cd /home/florent/GoL_Demo_2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build/CMakeFiles/allmodules.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/allmodules.dir/depend
