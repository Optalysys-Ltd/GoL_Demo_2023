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
include src/binfhe/CMakeFiles/binfhe_tests.dir/depend.make

# Include the progress variables for this target.
include src/binfhe/CMakeFiles/binfhe_tests.dir/progress.make

# Include the compile flags for this target's objects.
include src/binfhe/CMakeFiles/binfhe_tests.dir/flags.make

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.o: src/binfhe/CMakeFiles/binfhe_tests.dir/flags.make
src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.o: ../src/binfhe/unittest/UnitTestFHEW.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.o"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.o -c /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEW.cpp

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.i"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEW.cpp > CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.i

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.s"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEW.cpp -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.s

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.o: src/binfhe/CMakeFiles/binfhe_tests.dir/flags.make
src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.o: ../src/binfhe/unittest/UnitTestFHEWDeep.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.o"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.o -c /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWDeep.cpp

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.i"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWDeep.cpp > CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.i

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.s"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWDeep.cpp -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.s

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.o: src/binfhe/CMakeFiles/binfhe_tests.dir/flags.make
src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.o: ../src/binfhe/unittest/UnitTestFHEWSerial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.o"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.o -c /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWSerial.cpp

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.i"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWSerial.cpp > CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.i

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.s"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFHEWSerial.cpp -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.s

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.o: src/binfhe/CMakeFiles/binfhe_tests.dir/flags.make
src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.o: ../src/binfhe/unittest/UnitTestFunc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.o"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.o -c /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFunc.cpp

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.i"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFunc.cpp > CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.i

src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.s"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/florent/GoL_Demo_2023/src/binfhe/unittest/UnitTestFunc.cpp -o CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.s

src/binfhe/CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.o: src/binfhe/CMakeFiles/binfhe_tests.dir/flags.make
src/binfhe/CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.o: ../test/Main_TestAll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/binfhe/CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.o"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.o -c /home/florent/GoL_Demo_2023/test/Main_TestAll.cpp

src/binfhe/CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.i"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/florent/GoL_Demo_2023/test/Main_TestAll.cpp > CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.i

src/binfhe/CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.s"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/florent/GoL_Demo_2023/test/Main_TestAll.cpp -o CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.s

# Object files for target binfhe_tests
binfhe_tests_OBJECTS = \
"CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.o" \
"CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.o" \
"CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.o" \
"CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.o" \
"CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.o"

# External object files for target binfhe_tests
binfhe_tests_EXTERNAL_OBJECTS =

unittest/binfhe_tests: src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEW.cpp.o
unittest/binfhe_tests: src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWDeep.cpp.o
unittest/binfhe_tests: src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFHEWSerial.cpp.o
unittest/binfhe_tests: src/binfhe/CMakeFiles/binfhe_tests.dir/unittest/UnitTestFunc.cpp.o
unittest/binfhe_tests: src/binfhe/CMakeFiles/binfhe_tests.dir/__/__/test/Main_TestAll.cpp.o
unittest/binfhe_tests: src/binfhe/CMakeFiles/binfhe_tests.dir/build.make
unittest/binfhe_tests: lib/libOPENFHEbinfhe.so.1.0.1
unittest/binfhe_tests: lib/libOPENFHEcore.so.1.0.1
unittest/binfhe_tests: src/binfhe/CMakeFiles/binfhe_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/florent/GoL_Demo_2023/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../../unittest/binfhe_tests"
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binfhe_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/binfhe/CMakeFiles/binfhe_tests.dir/build: unittest/binfhe_tests

.PHONY : src/binfhe/CMakeFiles/binfhe_tests.dir/build

src/binfhe/CMakeFiles/binfhe_tests.dir/clean:
	cd /home/florent/GoL_Demo_2023/build/src/binfhe && $(CMAKE_COMMAND) -P CMakeFiles/binfhe_tests.dir/cmake_clean.cmake
.PHONY : src/binfhe/CMakeFiles/binfhe_tests.dir/clean

src/binfhe/CMakeFiles/binfhe_tests.dir/depend:
	cd /home/florent/GoL_Demo_2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florent/GoL_Demo_2023 /home/florent/GoL_Demo_2023/src/binfhe /home/florent/GoL_Demo_2023/build /home/florent/GoL_Demo_2023/build/src/binfhe /home/florent/GoL_Demo_2023/build/src/binfhe/CMakeFiles/binfhe_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/binfhe/CMakeFiles/binfhe_tests.dir/depend
