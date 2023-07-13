; Auto-generated. Do not edit!


(cl:in-package fsd_common_msgs-msg)


;//! \htmlinclude ControlCommand.msg.html

(cl:defclass <ControlCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle
    :reader throttle
    :initarg :throttle
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (racing_status
    :reader racing_status
    :initarg :racing_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ControlCommand (<ControlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsd_common_msgs-msg:<ControlCommand> is deprecated: use fsd_common_msgs-msg:ControlCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:header-val is deprecated.  Use fsd_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:throttle-val is deprecated.  Use fsd_common_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:steering_angle-val is deprecated.  Use fsd_common_msgs-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'racing_status-val :lambda-list '(m))
(cl:defmethod racing_status-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:racing_status-val is deprecated.  Use fsd_common_msgs-msg:racing_status instead.")
  (racing_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommand>) ostream)
  "Serializes a message object of type '<ControlCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_angle) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'racing_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommand>) istream)
  "Deserializes a message object of type '<ControlCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_angle) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'racing_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommand>)))
  "Returns string type for a message object of type '<ControlCommand>"
  "fsd_common_msgs/ControlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommand)))
  "Returns string type for a message object of type 'ControlCommand"
  "fsd_common_msgs/ControlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommand>)))
  "Returns md5sum for a message object of type '<ControlCommand>"
  "3d97314d657212df7db4989e87675619")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommand)))
  "Returns md5sum for a message object of type 'ControlCommand"
  "3d97314d657212df7db4989e87675619")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommand>)))
  "Returns full string definition for message of type '<ControlCommand>"
  (cl:format cl:nil "std_msgs/Header header                                                 #这个是控制命令~%~%std_msgs/Float32 throttle        # Throttle value between [-1, 1]                           油门  越多油门越大  范围在【-1，1】~%std_msgs/Float32 steering_angle  # Steering angle value between [-1, 1], where left < 0, right > 0                 转角值 左小于0 右大于0~%uint8 racing_status   #车辆最终状态 告诉车辆我是否完赛~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommand)))
  "Returns full string definition for message of type 'ControlCommand"
  (cl:format cl:nil "std_msgs/Header header                                                 #这个是控制命令~%~%std_msgs/Float32 throttle        # Throttle value between [-1, 1]                           油门  越多油门越大  范围在【-1，1】~%std_msgs/Float32 steering_angle  # Steering angle value between [-1, 1], where left < 0, right > 0                 转角值 左小于0 右大于0~%uint8 racing_status   #车辆最终状态 告诉车辆我是否完赛~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_angle))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommand
    (cl:cons ':header (header msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':racing_status (racing_status msg))
))
