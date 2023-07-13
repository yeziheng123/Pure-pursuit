;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::CarState)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'CarState (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::CARSTATE")
  (make-package "FSD_COMMON_MSGS::CARSTATE"))

(in-package "ROS")
;;//! \htmlinclude CarState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fsd_common_msgs::CarState
  :super ros::object
  :slots (_header _car_state _car_state_dt ))

(defmethod fsd_common_msgs::CarState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:car_state __car_state) (instance geometry_msgs::Pose2D :init))
    ((:car_state_dt __car_state_dt) (instance fsd_common_msgs::CarStateDt :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _car_state __car_state)
   (setq _car_state_dt __car_state_dt)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:car_state
   (&rest __car_state)
   (if (keywordp (car __car_state))
       (send* _car_state __car_state)
     (progn
       (if __car_state (setq _car_state (car __car_state)))
       _car_state)))
  (:car_state_dt
   (&rest __car_state_dt)
   (if (keywordp (car __car_state_dt))
       (send* _car_state_dt __car_state_dt)
     (progn
       (if __car_state_dt (setq _car_state_dt (car __car_state_dt)))
       _car_state_dt)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose2D _car_state
    (send _car_state :serialization-length)
    ;; fsd_common_msgs/CarStateDt _car_state_dt
    (send _car_state_dt :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose2D _car_state
       (send _car_state :serialize s)
     ;; fsd_common_msgs/CarStateDt _car_state_dt
       (send _car_state_dt :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose2D _car_state
     (send _car_state :deserialize buf ptr-) (incf ptr- (send _car_state :serialization-length))
   ;; fsd_common_msgs/CarStateDt _car_state_dt
     (send _car_state_dt :deserialize buf ptr-) (incf ptr- (send _car_state_dt :serialization-length))
   ;;
   self)
  )

(setf (get fsd_common_msgs::CarState :md5sum-) "485b164b70a3bc9c13533c34f664820c")
(setf (get fsd_common_msgs::CarState :datatype-) "fsd_common_msgs/CarState")
(setf (get fsd_common_msgs::CarState :definition-)
      "std_msgs/Header header                          #标准消息包std_msgs

geometry_msgs/Pose2D car_state    			# Position in x, y, theta      在x，y的位置 角度            2D上面的位置和方向
fsd_common_msgs/CarStateDt car_state_dt		# Velocities   速度
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: fsd_common_msgs/CarStateDt
std_msgs/Header header

geometry_msgs/Pose2D car_state_dt   # Velocity in x, y, theta                      x y方向上的速度  角度
geometry_msgs/Pose2D car_state_a   # Acceleration in x, y, theta               x y方向上的加速度 角度

")



(provide :fsd_common_msgs/CarState "485b164b70a3bc9c13533c34f664820c")


