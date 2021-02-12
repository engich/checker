# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2019.3.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.3.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pikalm/Projects/ESCA-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pikalm/Projects/ESCA-master

# Include any dependencies generated for this target.
include src/FSM/CMakeFiles/fsm.dir/depend.make

# Include the progress variables for this target.
include src/FSM/CMakeFiles/fsm.dir/progress.make

# Include the compile flags for this target's objects.
include src/FSM/CMakeFiles/fsm.dir/flags.make

src/FSM/CMakeFiles/fsm.dir/FSM.cpp.o: src/FSM/CMakeFiles/fsm.dir/flags.make
src/FSM/CMakeFiles/fsm.dir/FSM.cpp.o: src/FSM/FSM.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pikalm/Projects/ESCA-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/FSM/CMakeFiles/fsm.dir/FSM.cpp.o"
	cd /home/pikalm/Projects/ESCA-master/src/FSM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fsm.dir/FSM.cpp.o -c /home/pikalm/Projects/ESCA-master/src/FSM/FSM.cpp

src/FSM/CMakeFiles/fsm.dir/FSM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fsm.dir/FSM.cpp.i"
	cd /home/pikalm/Projects/ESCA-master/src/FSM && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pikalm/Projects/ESCA-master/src/FSM/FSM.cpp > CMakeFiles/fsm.dir/FSM.cpp.i

src/FSM/CMakeFiles/fsm.dir/FSM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fsm.dir/FSM.cpp.s"
	cd /home/pikalm/Projects/ESCA-master/src/FSM && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pikalm/Projects/ESCA-master/src/FSM/FSM.cpp -o CMakeFiles/fsm.dir/FSM.cpp.s

src/FSM/CMakeFiles/fsm.dir/StateFSM.cpp.o: src/FSM/CMakeFiles/fsm.dir/flags.make
src/FSM/CMakeFiles/fsm.dir/StateFSM.cpp.o: src/FSM/StateFSM.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pikalm/Projects/ESCA-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/FSM/CMakeFiles/fsm.dir/StateFSM.cpp.o"
	cd /home/pikalm/Projects/ESCA-master/src/FSM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fsm.dir/StateFSM.cpp.o -c /home/pikalm/Projects/ESCA-master/src/FSM/StateFSM.cpp

src/FSM/CMakeFiles/fsm.dir/StateFSM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fsm.dir/StateFSM.cpp.i"
	cd /home/pikalm/Projects/ESCA-master/src/FSM && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pikalm/Projects/ESCA-master/src/FSM/StateFSM.cpp > CMakeFiles/fsm.dir/StateFSM.cpp.i

src/FSM/CMakeFiles/fsm.dir/StateFSM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fsm.dir/StateFSM.cpp.s"
	cd /home/pikalm/Projects/ESCA-master/src/FSM && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pikalm/Projects/ESCA-master/src/FSM/StateFSM.cpp -o CMakeFiles/fsm.dir/StateFSM.cpp.s

# Object files for target fsm
fsm_OBJECTS = \
"CMakeFiles/fsm.dir/FSM.cpp.o" \
"CMakeFiles/fsm.dir/StateFSM.cpp.o"

# External object files for target fsm
fsm_EXTERNAL_OBJECTS =

src/FSM/libfsm.so: src/FSM/CMakeFiles/fsm.dir/FSM.cpp.o
src/FSM/libfsm.so: src/FSM/CMakeFiles/fsm.dir/StateFSM.cpp.o
src/FSM/libfsm.so: src/FSM/CMakeFiles/fsm.dir/build.make
src/FSM/libfsm.so: src/FSM/CMakeFiles/fsm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pikalm/Projects/ESCA-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libfsm.so"
	cd /home/pikalm/Projects/ESCA-master/src/FSM && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fsm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/FSM/CMakeFiles/fsm.dir/build: src/FSM/libfsm.so

.PHONY : src/FSM/CMakeFiles/fsm.dir/build

src/FSM/CMakeFiles/fsm.dir/clean:
	cd /home/pikalm/Projects/ESCA-master/src/FSM && $(CMAKE_COMMAND) -P CMakeFiles/fsm.dir/cmake_clean.cmake
.PHONY : src/FSM/CMakeFiles/fsm.dir/clean

src/FSM/CMakeFiles/fsm.dir/depend:
	cd /home/pikalm/Projects/ESCA-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pikalm/Projects/ESCA-master /home/pikalm/Projects/ESCA-master/src/FSM /home/pikalm/Projects/ESCA-master /home/pikalm/Projects/ESCA-master/src/FSM /home/pikalm/Projects/ESCA-master/src/FSM/CMakeFiles/fsm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/FSM/CMakeFiles/fsm.dir/depend
