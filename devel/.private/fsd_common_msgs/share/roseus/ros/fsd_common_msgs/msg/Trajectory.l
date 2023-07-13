;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::Trajectory)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'Trajectory (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::TRAJECTORY")
  (make-package "FSD_COMMON_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fsd_common_msgs::Trajectory
  :super ros::object
  :slots (_header _trajectory ))

(defmethod fsd_common_msgs::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance fsd_common_msgs::TrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory __trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; fsd_common_msgs/TrajectoryPoint[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; fsd_common_msgs/TrajectoryPoint[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; fsd_common_msgs/TrajectoryPoint[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance fsd_common_msgs::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fsd_common_msgs::Trajectory :md5sum-) "a6a2c3fb04ebbbd5dad7a720ce5bc5ac")
(setf (get fsd_common_msgs::Trajectory :datatype-) "fsd_common_msgs/Trajectory")
(setf (get fsd_common_msgs::Trajectory :definition-)
      "std_msgs/Header header

fsd_common_msgs/TrajectoryPoint[] trajectory                                          #轨迹
  
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
MSG: fsd_common_msgs/TrajectoryPoint
geometry_msgs/Point pts                       #是一个二维坐标点  包含一个点在自由空间的位置
std_msgs/Float64 yaw                             #就是一个float64位的数据           航向角 yaw                 

std_msgs/Float64 curvature            #曲率？...  根据经纬度算
std_msgs/Float64 velocity                 #速度
std_msgs/Float64 r                              #半径...车轮转角
std_msgs/Float64 acc                     #机器人加速度百分率   （不确定）

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :fsd_common_msgs/Trajectory "a6a2c3fb04ebbbd5dad7a720ce5bc5ac")


