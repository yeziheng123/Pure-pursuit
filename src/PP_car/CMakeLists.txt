cmake_minimum_required(VERSION 3.0.2)
project(PP_car)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  fsd_common_msgs
  geometry_msgs
  nav_msgs
  roscpp
  std_msgs
)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")


catkin_package(
        #  INCLUDE_DIRS include
        #  LIBRARIES hello
        CATKIN_DEPENDS roscpp std_msgs nav_msgs
        #   DEPENDS ipopt
)

add_executable(${PROJECT_NAME}
        src/pp.cpp

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