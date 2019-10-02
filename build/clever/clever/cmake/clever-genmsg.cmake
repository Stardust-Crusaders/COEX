# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "clever: 0 messages, 8 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(clever_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv" ""
)

get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv" ""
)

get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv" ""
)

get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv" ""
)

get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv" ""
)

get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv" ""
)

get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv" ""
)

get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv" NAME_WE)
add_custom_target(_clever_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clever" "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)
_generate_srv_cpp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
)

### Generating Module File
_generate_module_cpp(clever
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(clever_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(clever_generate_messages clever_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clever_generate_messages_cpp _clever_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clever_gencpp)
add_dependencies(clever_gencpp clever_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clever_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)
_generate_srv_eus(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
)

### Generating Module File
_generate_module_eus(clever
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(clever_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(clever_generate_messages clever_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clever_generate_messages_eus _clever_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clever_geneus)
add_dependencies(clever_geneus clever_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clever_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)
_generate_srv_lisp(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
)

### Generating Module File
_generate_module_lisp(clever
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(clever_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(clever_generate_messages clever_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clever_generate_messages_lisp _clever_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clever_genlisp)
add_dependencies(clever_genlisp clever_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clever_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)
_generate_srv_nodejs(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
)

### Generating Module File
_generate_module_nodejs(clever
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(clever_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(clever_generate_messages clever_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clever_generate_messages_nodejs _clever_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clever_gennodejs)
add_dependencies(clever_gennodejs clever_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clever_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)
_generate_srv_py(clever
  "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
)

### Generating Module File
_generate_module_py(clever
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(clever_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(clever_generate_messages clever_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetPosition.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetRates.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/Navigate.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kira/projects/copter_hack/catkin_ws/src/clever/clever/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clever_generate_messages_py _clever_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clever_genpy)
add_dependencies(clever_genpy clever_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clever_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clever
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(clever_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clever
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(clever_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clever
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(clever_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clever
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(clever_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clever
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(clever_generate_messages_py std_msgs_generate_messages_py)
endif()
