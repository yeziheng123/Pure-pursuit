;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::CarStateDt)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'CarStateDt (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::CARSTATEDT")
  (make-package "FSD_COMMON_MSGS::CARSTATEDT"))

(in-package "ROS")
;;//! \htmlinclude CarStateDt.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fsd_common_msgs::CarStateDt
  :super ros::object
  :slots (_header _car_state_dt _car_state_a ))

(defmethod fsd_common_msgs::CarStateDt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:car_state_dt __car_state_dt) (instance geometry_msgs::Pose2D :init))
    ((:car_state_a __car_state_a) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _car_state_dt __car_state_dt)
   (setq _car_state_a __car_state_a)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:car_state_dt
   (&rest __car_state_dt)
   (if (keywordp (car __car_state_dt))
       (send* _car_state_dt __car_state_dt)
     (progn
       (if __car_state_dt (setq _car_state_dt (car __car_state_dt)))
       _car_state_dt)))
  (:car_state_a
   (&rest __car_state_a)
   (if (keywordp (car __car_state_a))
       (send* _car_state_a __car_state_a)
     (progn
       (if __car_state_a (setq _car_state_a (car __car_state_a)))
       _car_state_a)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose2D _car_state_dt
    (send _car_state_dt :serialization-length)
    ;; geometry_msgs/Pose2D _car_state_a
    (send _car_state_a :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose2D _car_state_dt
       (send _car_state_dt :serialize s)
     ;; geometry_msgs/Pose2D _car_state_a
       (send _car_state_a :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose2D _car_state_dt
     (send _car_state_dt :deserialize buf ptr-) (incf ptr- (send _car_state_dt :serialization-length))
   ;; geometry_msgs/Pose2D _car_state_a
     (send _car_state_a :deserialize buf ptr-) (incf ptr- (send _car_state_a :serialization-length))
   ;;
   self)
  )

(setf (get fsd_common_msgs::CarStateDt :md5sum-) "d822c665063f7d56fa464194b634b0e7")
(setf (get fsd_common_msgs::CarStateDt :datatype-) "fsd_common_msgs/CarStateDt")
(setf (get fsd_common_msgs::CarStateDt :definition-)
      "std_msgs/Header header

geometry_msgs/Pose2D car_state_dt   # Velocity in x, y, theta                      x y方向上的速度  角度
geometry_msgs/Pose2D car_state_a   # Acceleration in x, y, theta               x y方向上的加速度 角度

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

")



(provide :fsd_common_msgs/CarStateDt "d822c665063f7d56fa464194b634b0e7")


