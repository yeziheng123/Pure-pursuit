; Auto-generated. Do not edit!


(cl:in-package fsd_common_msgs-msg)


;//! \htmlinclude TrajectoryPoint.msg.html

(cl:defclass <TrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((pts
    :reader pts
    :initarg :pts
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (yaw
    :reader yaw
    :initarg :yaw
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (curvature
    :reader curvature
    :initarg :curvature
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (velocity
    :reader velocity
    :initarg :velocity
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (r
    :reader r
    :initarg :r
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (acc
    :reader acc
    :initarg :acc
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass TrajectoryPoint (<TrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsd_common_msgs-msg:<TrajectoryPoint> is deprecated: use fsd_common_msgs-msg:TrajectoryPoint instead.")))

(cl:ensure-generic-function 'pts-val :lambda-list '(m))
(cl:defmethod pts-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:pts-val is deprecated.  Use fsd_common_msgs-msg:pts instead.")
  (pts m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:yaw-val is deprecated.  Use fsd_common_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:curvature-val is deprecated.  Use fsd_common_msgs-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:velocity-val is deprecated.  Use fsd_common_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:r-val is deprecated.  Use fsd_common_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:acc-val is deprecated.  Use fsd_common_msgs-msg:acc instead.")
  (acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPoint>) ostream)
  "Serializes a message object of type '<TrajectoryPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pts) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'yaw) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curvature) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPoint>) istream)
  "Deserializes a message object of type '<TrajectoryPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pts) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'yaw) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curvature) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPoint>)))
  "Returns string type for a message object of type '<TrajectoryPoint>"
  "fsd_common_msgs/TrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPoint)))
  "Returns string type for a message object of type 'TrajectoryPoint"
  "fsd_common_msgs/TrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPoint>)))
  "Returns md5sum for a message object of type '<TrajectoryPoint>"
  "b3b64e448d35243415e296a8071da00c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPoint)))
  "Returns md5sum for a message object of type 'TrajectoryPoint"
  "b3b64e448d35243415e296a8071da00c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPoint>)))
  "Returns full string definition for message of type '<TrajectoryPoint>"
  (cl:format cl:nil "geometry_msgs/Point pts                       #是一个二维坐标点  包含一个点在自由空间的位置~%std_msgs/Float64 yaw                             #就是一个float64位的数据           航向角 yaw                 ~%~%std_msgs/Float64 curvature            #曲率？...  根据经纬度算~%std_msgs/Float64 velocity                 #速度~%std_msgs/Float64 r                              #半径...车轮转角~%std_msgs/Float64 acc                     #机器人加速度百分率   （不确定）~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPoint)))
  "Returns full string definition for message of type 'TrajectoryPoint"
  (cl:format cl:nil "geometry_msgs/Point pts                       #是一个二维坐标点  包含一个点在自由空间的位置~%std_msgs/Float64 yaw                             #就是一个float64位的数据           航向角 yaw                 ~%~%std_msgs/Float64 curvature            #曲率？...  根据经纬度算~%std_msgs/Float64 velocity                 #速度~%std_msgs/Float64 r                              #半径...车轮转角~%std_msgs/Float64 acc                     #机器人加速度百分率   （不确定）~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pts))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'yaw))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curvature))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPoint
    (cl:cons ':pts (pts msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':r (r msg))
    (cl:cons ':acc (acc msg))
))
