# Install script for directory: /home/kira/projects/copter_hack/catkin_ws/src/clever/clever

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/clever/srv" TYPE FILE FILES
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv"
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv"
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv"
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv"
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv"
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv"
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv"
    "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/clever/cmake" TYPE FILE FILES "/home/kira/projects/copter_hack/catkin_ws/build/clever/clever/catkin_generated/installspace/clever-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/kira/projects/copter_hack/catkin_ws/devel/include/clever")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/kira/projects/copter_hack/catkin_ws/devel/share/roseus/ros/clever")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/kira/projects/copter_hack/catkin_ws/devel/share/common-lisp/ros/clever")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/kira/projects/copter_hack/catkin_ws/devel/share/gennodejs/ros/clever")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/kira/projects/copter_hack/catkin_ws/devel/lib/python2.7/dist-packages/clever")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/kira/projects/copter_hack/catkin_ws/devel/lib/python2.7/dist-packages/clever")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kira/projects/copter_hack/catkin_ws/build/clever/clever/catkin_generated/installspace/clever.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/clever/cmake" TYPE FILE FILES "/home/kira/projects/copter_hack/catkin_ws/build/clever/clever/catkin_generated/installspace/clever-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/clever/cmake" TYPE FILE FILES
    "/home/kira/projects/copter_hack/catkin_ws/build/clever/clever/catkin_generated/installspace/cleverConfig.cmake"
    "/home/kira/projects/copter_hack/catkin_ws/build/clever/clever/catkin_generated/installspace/cleverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/clever" TYPE FILE FILES "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/package.xml")
endif()

