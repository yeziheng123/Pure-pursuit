cmake_minimum_required(VERSION 2.8.3)

project(fsd_common_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation  # Needed to generate custom message types        需要生成的自定义消息的类型
  genmsg
  std_msgs
  roscpp
  rospy
  geometry_msgs
  sensor_msgs
  )

add_message_files(  # Tell catkin which custom message files to include        告诉catkin要包括哪些自定义消息文件
  FILES
  Cone.msg
  ControlCommand.msg
  CarState.msg
  CarStateDt.msg
  Map.msg
  Trajectory.msg
  TrajectoryPoint.msg
  newRTK.msg
  ASENSING.msg
  VehcileCmd.msg
  )

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  sensor_msgs
)


catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs geometry_msgs # Needed to generate custom messages           需要生成自定义消息
)
include_directories(
  # include
  ${catkin_INCLUDE_DIRS}
  ${roscpp_INCLUDE_DIRS}
  ${rospy_INCLUDE_DIRS}
)

