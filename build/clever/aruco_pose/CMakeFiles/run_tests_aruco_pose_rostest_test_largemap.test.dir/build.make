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

# Utility rule file for run_tests_aruco_pose_rostest_test_largemap.test.

# Include the progress variables for this target.
include clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/progress.make

clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test:
	cd /home/pi/catkin_ws/build/clever/aruco_pose && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/run_tests.py /home/pi/catkin_ws/build/test_results/aruco_pose/rostest-test_largemap.xml "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/catkin_ws/src/clever/aruco_pose --package=aruco_pose --results-filename test_largemap.xml --results-base-dir \"/home/pi/catkin_ws/build/test_results\" /home/pi/catkin_ws/src/clever/aruco_pose/test/largemap.test "

run_tests_aruco_pose_rostest_test_largemap.test: clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test
run_tests_aruco_pose_rostest_test_largemap.test: clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/build.make

.PHONY : run_tests_aruco_pose_rostest_test_largemap.test

# Rule to build all files generated by this target.
clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/build: run_tests_aruco_pose_rostest_test_largemap.test

.PHONY : clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/build

clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/clean:
	cd /home/pi/catkin_ws/build/clever/aruco_pose && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/cmake_clean.cmake
.PHONY : clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/clean

clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/depend:
	cd /home/pi/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/catkin_ws/src /home/pi/catkin_ws/src/clever/aruco_pose /home/pi/catkin_ws/build /home/pi/catkin_ws/build/clever/aruco_pose /home/pi/catkin_ws/build/clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : clever/aruco_pose/CMakeFiles/run_tests_aruco_pose_rostest_test_largemap.test.dir/depend

