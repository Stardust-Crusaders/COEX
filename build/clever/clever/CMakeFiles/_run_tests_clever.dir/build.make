# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/catkin_ws/build

# Utility rule file for _run_tests_clever.

# Include the progress variables for this target.
include clever/clever/CMakeFiles/_run_tests_clever.dir/progress.make

_run_tests_clever: clever/clever/CMakeFiles/_run_tests_clever.dir/build.make

.PHONY : _run_tests_clever

# Rule to build all files generated by this target.
clever/clever/CMakeFiles/_run_tests_clever.dir/build: _run_tests_clever

.PHONY : clever/clever/CMakeFiles/_run_tests_clever.dir/build

clever/clever/CMakeFiles/_run_tests_clever.dir/clean:
	cd /home/pi/catkin_ws/build/clever/clever && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_clever.dir/cmake_clean.cmake
.PHONY : clever/clever/CMakeFiles/_run_tests_clever.dir/clean

clever/clever/CMakeFiles/_run_tests_clever.dir/depend:
	cd /home/pi/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/catkin_ws/src /home/pi/catkin_ws/src/clever/clever /home/pi/catkin_ws/build /home/pi/catkin_ws/build/clever/clever /home/pi/catkin_ws/build/clever/clever/CMakeFiles/_run_tests_clever.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : clever/clever/CMakeFiles/_run_tests_clever.dir/depend

