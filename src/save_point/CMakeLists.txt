cmake_minimum_required(VERSION 3.0.2)
project(save_point)


set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_definitions(-D_GLIBCXX_USE_C99=1)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)
set(CMAKE_CXX_FLAGS "-O2")


## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  nav_msgs
  roscpp
  std_msgs
  fsd_common_msgs
)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")


catkin_package(
        #  INCLUDE_DIRS include
        #  LIBRARIES hello
        CATKIN_DEPENDS roscpp std_msgs nav_msgs
        #   DEPENDS ipopt
)

add_executable(${PROJECT_NAME}
        src/main.cpp
        src/handle.cpp
        include/Coordinate/CoorConv.hpp
        include/Coordinate/save_point.hpp
)


target_link_libraries(${PROJECT_NAME}
        ${catkin_LIBRARIES}
        ${IPOPT_LIBRARIES}
        ${OpenCV_LIBS}
        )


## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
        include
        ${EIGEN3_INCLUDE_DIRS}
        ${catkin_INCLUDE_DIRS}
        ${IPOPT_INCLUDE_DIRS}
        /usr/include/eigen3
)