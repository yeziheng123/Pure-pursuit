# Pure_pursuit_PI
Pure_pursuit_PI is a trajectory tracking algorithm package for known paths. It uses a combination of inertial navigation and manual driving to obtain path points. The offline trajectory is then tracked using Pure_pursuit_PI. This code has been successfully tested on an autonomous formula racing car using ROS and C++.
## 依赖关系
* Ubuntu (18.04 test)
* ROS (Melodic)
* Common: Specialized message package translation from Chinese to English
## save_point
This package functions by using ROS communication to obtain real-time latitude and longitude information from the inertial navigation device used during manual driving. The obtained latitude and longitude information is then converted into a local coordinate system (East-North-Up) with the vehicle's origin as the reference point, thus establishing a map coordinate system. Additionally, real-time status information of the vehicle is also obtained.
During the actual vehicle operation, it is necessary to run this package first in order to successfully obtain the known path after manual driving.
## PP_car
After completing the "save_point" package, this functionality package can obtain a known path in a TXT file. By reading the data points from the TXT file, it can achieve trajectory tracking control for the vehicle. Both the coordinate system of the offline path and the coordinate system of the vehicle itself use the East-North-Up coordinate system. By using the same latitude and longitude data as the starting point for both coordinate systems, the goal of having the same coordinates can be directly achieved.
## gps_to_rviz
Visualization Toolkit: This package utilizes RViz to display the real-time route of the vehicle during its operation.
## ros_controller
This package serves as a communication interface between the vehicle's control output and its underlying system. It includes setting the vehicle's state and the actual output parameters such as steering angle and throttle rate.
