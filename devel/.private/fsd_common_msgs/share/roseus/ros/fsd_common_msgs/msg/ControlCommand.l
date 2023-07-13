;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::ControlCommand)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'ControlCommand (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::CONTROLCOMMAND")
  (make-package "FSD_COMMON_MSGS::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fsd_common_msgs::ControlCommand
  :super ros::object
  :slots (_header _throttle _steering_angle _racing_status ))

(defmethod fsd_common_msgs::ControlCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle __throttle) (instance std_msgs::Float32 :init))
    ((:steering_angle __steering_angle) (instance std_msgs::Float32 :init))
    ((:racing_status __racing_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle __throttle)
   (setq _steering_angle __steering_angle)
   (setq _racing_status (round __racing_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle
   (&rest __throttle)
   (if (keywordp (car __throttle))
       (send* _throttle __throttle)
     (progn
       (if __throttle (setq _throttle (car __throttle)))
       _throttle)))
  (:steering_angle
   (&rest __steering_angle)
   (if (keywordp (car __steering_angle))
       (send* _steering_angle __steering_angle)
     (progn
       (if __steering_angle (setq _steering_angle (car __steering_angle)))
       _steering_angle)))
  (:racing_status
   (&optional __racing_status)
   (if __racing_status (setq _racing_status __racing_status)) _racing_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32 _throttle
    (send _throttle :serialization-length)
    ;; std_msgs/Float32 _steering_angle
    (send _steering_angle :serialization-length)
    ;; uint8 _racing_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32 _throttle
       (send _throttle :serialize s)
     ;; std_msgs/Float32 _steering_angle
       (send _steering_angle :serialize s)
     ;; uint8 _racing_status
       (write-byte _racing_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32 _throttle
     (send _throttle :deserialize buf ptr-) (incf ptr- (send _throttle :serialization-length))
   ;; std_msgs/Float32 _steering_angle
     (send _steering_angle :deserialize buf ptr-) (incf ptr- (send _steering_angle :serialization-length))
   ;; uint8 _racing_status
     (setq _racing_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fsd_common_msgs::ControlCommand :md5sum-) "3d97314d657212df7db4989e87675619")
(setf (get fsd_common_msgs::ControlCommand :datatype-) "fsd_common_msgs/ControlCommand")
(setf (get fsd_common_msgs::ControlCommand :definition-)
      "std_msgs/Header header                                                 #这个是控制命令

std_msgs/Float32 throttle        # Throttle value between [-1, 1]                           油门  越多油门越大  范围在【-1，1】
std_msgs/Float32 steering_angle  # Steering angle value between [-1, 1], where left < 0, right > 0                 转角值 左小于0 右大于0
uint8 racing_status   #车辆最终状态 告诉车辆我是否完赛
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
MSG: std_msgs/Float32
float32 data
")



(provide :fsd_common_msgs/ControlCommand "3d97314d657212df7db4989e87675619")


