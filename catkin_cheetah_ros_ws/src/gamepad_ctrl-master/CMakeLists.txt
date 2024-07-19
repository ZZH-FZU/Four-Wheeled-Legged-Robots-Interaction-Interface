cmake_minimum_required(VERSION 3.0.2)
project(gamepad_ctrl)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  geometry_msgs
)

catkin_package(
  LIBRARIES
  INCLUDE_DIRS
  CATKIN_DEPENDS roscpp std_msgs geometry_msgs
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(gamepad_ctrl src/main.cpp)
target_link_libraries(gamepad_ctrl ${catkin_LIBRARIES})
add_dependencies(gamepad_ctrl ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})