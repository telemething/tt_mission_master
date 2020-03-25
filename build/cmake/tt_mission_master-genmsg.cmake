# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tt_mission_master: 1 messages, 2 services")

set(MSG_I_FLAGS "-Itt_mission_master:/Data/catkin-ws/src/tt_mission_master/msg;-Istd_msgs:/home/mark/ros_catkin_ws/install_isolated/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tt_mission_master_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg" NAME_WE)
add_custom_target(_tt_mission_master_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tt_mission_master" "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg" ""
)

get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv" NAME_WE)
add_custom_target(_tt_mission_master_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tt_mission_master" "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv" "tt_mission_master/Waypoint"
)

get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv" NAME_WE)
add_custom_target(_tt_mission_master_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tt_mission_master" "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tt_mission_master
)

### Generating Services
_generate_srv_cpp(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tt_mission_master
)
_generate_srv_cpp(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tt_mission_master
)

### Generating Module File
_generate_module_cpp(tt_mission_master
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tt_mission_master
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tt_mission_master_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tt_mission_master_generate_messages tt_mission_master_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_cpp _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_cpp _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_cpp _tt_mission_master_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tt_mission_master_gencpp)
add_dependencies(tt_mission_master_gencpp tt_mission_master_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tt_mission_master_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tt_mission_master
)

### Generating Services
_generate_srv_eus(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tt_mission_master
)
_generate_srv_eus(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tt_mission_master
)

### Generating Module File
_generate_module_eus(tt_mission_master
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tt_mission_master
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tt_mission_master_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tt_mission_master_generate_messages tt_mission_master_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_eus _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_eus _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_eus _tt_mission_master_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tt_mission_master_geneus)
add_dependencies(tt_mission_master_geneus tt_mission_master_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tt_mission_master_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tt_mission_master
)

### Generating Services
_generate_srv_lisp(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tt_mission_master
)
_generate_srv_lisp(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tt_mission_master
)

### Generating Module File
_generate_module_lisp(tt_mission_master
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tt_mission_master
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tt_mission_master_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tt_mission_master_generate_messages tt_mission_master_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_lisp _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_lisp _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_lisp _tt_mission_master_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tt_mission_master_genlisp)
add_dependencies(tt_mission_master_genlisp tt_mission_master_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tt_mission_master_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tt_mission_master
)

### Generating Services
_generate_srv_nodejs(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tt_mission_master
)
_generate_srv_nodejs(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tt_mission_master
)

### Generating Module File
_generate_module_nodejs(tt_mission_master
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tt_mission_master
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tt_mission_master_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tt_mission_master_generate_messages tt_mission_master_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_nodejs _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_nodejs _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_nodejs _tt_mission_master_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tt_mission_master_gennodejs)
add_dependencies(tt_mission_master_gennodejs tt_mission_master_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tt_mission_master_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tt_mission_master
)

### Generating Services
_generate_srv_py(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tt_mission_master
)
_generate_srv_py(tt_mission_master
  "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tt_mission_master
)

### Generating Module File
_generate_module_py(tt_mission_master
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tt_mission_master
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tt_mission_master_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tt_mission_master_generate_messages tt_mission_master_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/msg/Waypoint.msg" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_py _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/WaypointPush.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_py _tt_mission_master_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Data/catkin-ws/src/tt_mission_master/srv/StartMission.srv" NAME_WE)
add_dependencies(tt_mission_master_generate_messages_py _tt_mission_master_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tt_mission_master_genpy)
add_dependencies(tt_mission_master_genpy tt_mission_master_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tt_mission_master_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tt_mission_master)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tt_mission_master
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tt_mission_master_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tt_mission_master)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tt_mission_master
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tt_mission_master_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tt_mission_master)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tt_mission_master
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tt_mission_master_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tt_mission_master)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tt_mission_master
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tt_mission_master_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tt_mission_master)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tt_mission_master\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tt_mission_master
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tt_mission_master_generate_messages_py std_msgs_generate_messages_py)
endif()
