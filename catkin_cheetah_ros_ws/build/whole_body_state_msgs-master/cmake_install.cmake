# Install script for directory: /home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zzh/catkin_cheetah_ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whole_body_state_msgs/msg" TYPE FILE FILES
    "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointCommand.msg"
    "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/CentroidalState.msg"
    "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/JointState.msg"
    "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/ContactState.msg"
    "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyState.msg"
    "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyTrajectory.msg"
    "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/msg/WholeBodyController.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whole_body_state_msgs/cmake" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/build/whole_body_state_msgs-master/catkin_generated/installspace/whole_body_state_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/include/whole_body_state_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/share/roseus/ros/whole_body_state_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/share/common-lisp/ros/whole_body_state_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/share/gennodejs/ros/whole_body_state_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/zzh/catkin_cheetah_ros_ws/devel/lib/python3/dist-packages/whole_body_state_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/lib/python3/dist-packages/whole_body_state_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/build/whole_body_state_msgs-master/catkin_generated/installspace/whole_body_state_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whole_body_state_msgs/cmake" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/build/whole_body_state_msgs-master/catkin_generated/installspace/whole_body_state_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whole_body_state_msgs/cmake" TYPE FILE FILES
    "/home/zzh/catkin_cheetah_ros_ws/build/whole_body_state_msgs-master/catkin_generated/installspace/whole_body_state_msgsConfig.cmake"
    "/home/zzh/catkin_cheetah_ros_ws/build/whole_body_state_msgs-master/catkin_generated/installspace/whole_body_state_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whole_body_state_msgs" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/src/whole_body_state_msgs-master/package.xml")
endif()

