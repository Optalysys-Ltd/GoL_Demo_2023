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
include third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/depend.make

# Include the progress variables for this target.
include third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/flags.make

third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/examples/Conway.cpp.o: third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/flags.make
third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/examples/Conway.cpp.o: ../third-party/optalysys/interface/examples/Conway.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/examples/Conway.cpp.o"
	cd /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Conway_opt.dir/examples/Conway.cpp.o -c /home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway.cpp

third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/examples/Conway.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Conway_opt.dir/examples/Conway.cpp.i"
	cd /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway.cpp > CMakeFiles/Conway_opt.dir/examples/Conway.cpp.i

third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/examples/Conway.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Conway_opt.dir/examples/Conway.cpp.s"
	cd /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/florent/GoL_Demo_2023/third-party/optalysys/interface/examples/Conway.cpp -o CMakeFiles/Conway_opt.dir/examples/Conway.cpp.s

# Object files for target Conway_opt
Conway_opt_OBJECTS = \
"CMakeFiles/Conway_opt.dir/examples/Conway.cpp.o"

# External object files for target Conway_opt
Conway_opt_EXTERNAL_OBJECTS =

bin/optalysys/Conway_opt: third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/examples/Conway.cpp.o
bin/optalysys/Conway_opt: third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/build.make
bin/optalysys/Conway_opt: lib/liboptalysys_interface.a
bin/optalysys/Conway_opt: lib/libOPENFHEbinfhe.so.1.0.1
bin/optalysys/Conway_opt: lib/libOPENFHEpke.so.1.0.1
bin/optalysys/Conway_opt: ../third-party/optalysys/Optalysys_proto_GraphEC/libproto_graphec.a
bin/optalysys/Conway_opt: lib/libOPENFHEcore.so.1.0.1
bin/optalysys/Conway_opt: third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/optalysys/Conway_opt"
	cd /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Conway_opt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/build: bin/optalysys/Conway_opt

.PHONY : third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/build

third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/clean:
	cd /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface && $(CMAKE_COMMAND) -P CMakeFiles/Conway_opt.dir/cmake_clean.cmake
.PHONY : third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/clean

third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/depend:
	cd /home/florent/GoL_Demo_2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023/third-party/optalysys/interface /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface /home/florent/GoL_Demo_2023/build/third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/optalysys/interface/CMakeFiles/Conway_opt.dir/depend

