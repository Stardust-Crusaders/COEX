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

# Utility rule file for clever_generate_messages_cpp.

# Include the progress variables for this target.
include clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/progress.make

clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetAttitude.h
clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetLEDEffect.h
clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/NavigateGlobal.h
clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetPosition.h
clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/Navigate.h
clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetRates.h
clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetVelocity.h
clever/clever/CMakeFiles/clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/GetTelemetry.h


/home/pi/catkin_ws/devel/include/clever/SetAttitude.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/SetAttitude.h: /home/pi/catkin_ws/src/clever/clever/srv/SetAttitude.srv
/home/pi/catkin_ws/devel/include/clever/SetAttitude.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/SetAttitude.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from clever/SetAttitude.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/SetAttitude.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pi/catkin_ws/devel/include/clever/SetLEDEffect.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/SetLEDEffect.h: /home/pi/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv
/home/pi/catkin_ws/devel/include/clever/SetLEDEffect.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/SetLEDEffect.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from clever/SetLEDEffect.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pi/catkin_ws/devel/include/clever/NavigateGlobal.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/NavigateGlobal.h: /home/pi/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv
/home/pi/catkin_ws/devel/include/clever/NavigateGlobal.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/NavigateGlobal.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from clever/NavigateGlobal.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pi/catkin_ws/devel/include/clever/SetPosition.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/SetPosition.h: /home/pi/catkin_ws/src/clever/clever/srv/SetPosition.srv
/home/pi/catkin_ws/devel/include/clever/SetPosition.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/SetPosition.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from clever/SetPosition.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/SetPosition.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pi/catkin_ws/devel/include/clever/Navigate.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/Navigate.h: /home/pi/catkin_ws/src/clever/clever/srv/Navigate.srv
/home/pi/catkin_ws/devel/include/clever/Navigate.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/Navigate.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating C++ code from clever/Navigate.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/Navigate.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pi/catkin_ws/devel/include/clever/SetRates.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/SetRates.h: /home/pi/catkin_ws/src/clever/clever/srv/SetRates.srv
/home/pi/catkin_ws/devel/include/clever/SetRates.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/SetRates.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating C++ code from clever/SetRates.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/SetRates.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pi/catkin_ws/devel/include/clever/SetVelocity.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/SetVelocity.h: /home/pi/catkin_ws/src/clever/clever/srv/SetVelocity.srv
/home/pi/catkin_ws/devel/include/clever/SetVelocity.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/SetVelocity.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating C++ code from clever/SetVelocity.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/SetVelocity.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pi/catkin_ws/devel/include/clever/GetTelemetry.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pi/catkin_ws/devel/include/clever/GetTelemetry.h: /home/pi/catkin_ws/src/clever/clever/srv/GetTelemetry.srv
/home/pi/catkin_ws/devel/include/clever/GetTelemetry.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pi/catkin_ws/devel/include/clever/GetTelemetry.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Generating C++ code from clever/GetTelemetry.srv"
	cd /home/pi/catkin_ws/src/clever/clever && /home/pi/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pi/catkin_ws/src/clever/clever/srv/GetTelemetry.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p clever -o /home/pi/catkin_ws/devel/include/clever -e /opt/ros/kinetic/share/gencpp/cmake/..

clever_generate_messages_cpp: clever/clever/CMakeFiles/clever_generate_messages_cpp
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetAttitude.h
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetLEDEffect.h
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/NavigateGlobal.h
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetPosition.h
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/Navigate.h
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetRates.h
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/SetVelocity.h
clever_generate_messages_cpp: /home/pi/catkin_ws/devel/include/clever/GetTelemetry.h
clever_generate_messages_cpp: clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/build.make

.PHONY : clever_generate_messages_cpp

# Rule to build all files generated by this target.
clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/build: clever_generate_messages_cpp

.PHONY : clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/build

clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/clean:
	cd /home/pi/catkin_ws/build/clever/clever && $(CMAKE_COMMAND) -P CMakeFiles/clever_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/clean

clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/depend:
	cd /home/pi/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/catkin_ws/src /home/pi/catkin_ws/src/clever/clever /home/pi/catkin_ws/build /home/pi/catkin_ws/build/clever/clever /home/pi/catkin_ws/build/clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : clever/clever/CMakeFiles/clever_generate_messages_cpp.dir/depend

