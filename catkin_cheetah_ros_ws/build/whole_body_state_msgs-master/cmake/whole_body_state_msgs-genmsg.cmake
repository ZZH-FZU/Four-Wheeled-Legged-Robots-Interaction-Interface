# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "whole_body_state_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iwhole_body_state_msgs:/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(whole_body_state_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg" NAME_WE)
add_custom_target(_whole_body_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whole_body_state_msgs" "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg" ""
)

get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg" NAME_WE)
add_custom_target(_whole_body_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whole_body_state_msgs" "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg" "geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg" NAME_WE)
add_custom_target(_whole_body_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whole_body_state_msgs" "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg" ""
)

get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg" NAME_WE)
add_custom_target(_whole_body_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whole_body_state_msgs" "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg" NAME_WE)
add_custom_target(_whole_body_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whole_body_state_msgs" "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg" "geometry_msgs/Twist:whole_body_state_msgs/CentroidalState:geometry_msgs/Vector3:geometry_msgs/Quaternion:whole_body_state_msgs/JointState:geometry_msgs/Pose:geometry_msgs/Wrench:whole_body_state_msgs/ContactState:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg" NAME_WE)
add_custom_target(_whole_body_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whole_body_state_msgs" "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg" "geometry_msgs/Twist:whole_body_state_msgs/CentroidalState:whole_body_state_msgs/WholeBodyState:geometry_msgs/Vector3:geometry_msgs/Quaternion:whole_body_state_msgs/JointState:geometry_msgs/Pose:geometry_msgs/Wrench:whole_body_state_msgs/ContactState:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg" NAME_WE)
add_custom_target(_whole_body_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whole_body_state_msgs" "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg" "geometry_msgs/Twist:whole_body_state_msgs/CentroidalState:whole_body_state_msgs/WholeBodyState:geometry_msgs/Vector3:geometry_msgs/Quaternion:whole_body_state_msgs/JointState:geometry_msgs/Pose:geometry_msgs/Wrench:whole_body_state_msgs/ContactState:geometry_msgs/Point:whole_body_state_msgs/JointCommand:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_cpp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_cpp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_cpp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_cpp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_cpp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_cpp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(whole_body_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(whole_body_state_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(whole_body_state_msgs_generate_messages whole_body_state_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_cpp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_cpp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_cpp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_cpp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_cpp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_cpp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_cpp _whole_body_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whole_body_state_msgs_gencpp)
add_dependencies(whole_body_state_msgs_gencpp whole_body_state_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whole_body_state_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_eus(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_eus(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_eus(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_eus(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_eus(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_eus(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(whole_body_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(whole_body_state_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(whole_body_state_msgs_generate_messages whole_body_state_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_eus _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_eus _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_eus _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_eus _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_eus _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_eus _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_eus _whole_body_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whole_body_state_msgs_geneus)
add_dependencies(whole_body_state_msgs_geneus whole_body_state_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whole_body_state_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_lisp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_lisp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_lisp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_lisp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_lisp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_lisp(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(whole_body_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(whole_body_state_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(whole_body_state_msgs_generate_messages whole_body_state_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_lisp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_lisp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_lisp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_lisp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_lisp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_lisp _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_lisp _whole_body_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whole_body_state_msgs_genlisp)
add_dependencies(whole_body_state_msgs_genlisp whole_body_state_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whole_body_state_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_nodejs(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_nodejs(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_nodejs(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_nodejs(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_nodejs(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_nodejs(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(whole_body_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(whole_body_state_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(whole_body_state_msgs_generate_messages whole_body_state_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_nodejs _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_nodejs _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_nodejs _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_nodejs _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_nodejs _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_nodejs _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_nodejs _whole_body_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whole_body_state_msgs_gennodejs)
add_dependencies(whole_body_state_msgs_gennodejs whole_body_state_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whole_body_state_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_py(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_py(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_py(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_py(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_py(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
)
_generate_msg_py(whole_body_state_msgs
  "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(whole_body_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(whole_body_state_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(whole_body_state_msgs_generate_messages whole_body_state_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_py _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_py _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_py _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_py _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_py _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_py _whole_body_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg" NAME_WE)
add_dependencies(whole_body_state_msgs_generate_messages_py _whole_body_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whole_body_state_msgs_genpy)
add_dependencies(whole_body_state_msgs_genpy whole_body_state_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whole_body_state_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whole_body_state_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(whole_body_state_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(whole_body_state_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whole_body_state_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(whole_body_state_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(whole_body_state_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whole_body_state_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(whole_body_state_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(whole_body_state_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whole_body_state_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(whole_body_state_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(whole_body_state_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whole_body_state_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(whole_body_state_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(whole_body_state_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
