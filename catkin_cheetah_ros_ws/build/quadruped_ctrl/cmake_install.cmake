# Install script for directory: /home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadruped_ctrl/msg" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/msg/commandDes.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadruped_ctrl/srv" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/srv/QuadrupedCmd.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadruped_ctrl/cmake" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/catkin_generated/installspace/quadruped_ctrl-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/include/quadruped_ctrl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/share/roseus/ros/quadruped_ctrl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/share/common-lisp/ros/quadruped_ctrl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/share/gennodejs/ros/quadruped_ctrl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/zzh/catkin_cheetah_ros_ws/devel/lib/python3/dist-packages/quadruped_ctrl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/zzh/catkin_cheetah_ros_ws/devel/lib/python3/dist-packages/quadruped_ctrl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/catkin_generated/installspace/quadruped_ctrl.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadruped_ctrl/cmake" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/catkin_generated/installspace/quadruped_ctrl-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadruped_ctrl/cmake" TYPE FILE FILES
    "/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/catkin_generated/installspace/quadruped_ctrlConfig.cmake"
    "/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/catkin_generated/installspace/quadruped_ctrlConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadruped_ctrl" TYPE FILE FILES "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/quadruped_ctrl" TYPE PROGRAM FILES "/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/catkin_generated/installspace/walking_simulation.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadruped_ctrl" TYPE DIRECTORY FILES
    "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/config"
    "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/models"
    "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/msg"
    "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/rviz"
    "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/urdf"
    "/home/zzh/catkin_cheetah_ros_ws/src/quadruped_ctrl/worlds"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/src/qpOASES/cmake_install.cmake")
  include("/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/src/JCQP/cmake_install.cmake")
  include("/home/zzh/catkin_cheetah_ros_ws/build/quadruped_ctrl/src/osqp/cmake_install.cmake")

endif()

