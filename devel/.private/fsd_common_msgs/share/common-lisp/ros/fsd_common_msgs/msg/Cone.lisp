; Auto-generated. Do not edit!


(cl:in-package fsd_common_msgs-msg)


;//! \htmlinclude Cone.msg.html

(cl:defclass <Cone> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Cone (<Cone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsd_common_msgs-msg:<Cone> is deprecated: use fsd_common_msgs-msg:Cone instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Cone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:position-val is deprecated.  Use fsd_common_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Cone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:color-val is deprecated.  Use fsd_common_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cone>) ostream)
  "Serializes a message object of type '<Cone>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cone>) istream)
  "Deserializes a message object of type '<Cone>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cone>)))
  "Returns string type for a message object of type '<Cone>"
  "fsd_common_msgs/Cone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cone)))
  "Returns string type for a message object of type 'Cone"
  "fsd_common_msgs/Cone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cone>)))
  "Returns md5sum for a message object of type '<Cone>"
  "a503fe5c66b468cc3dd8166c52d2bed4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cone)))
  "Returns md5sum for a message object of type 'Cone"
  "a503fe5c66b468cc3dd8166c52d2bed4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cone>)))
  "Returns full string definition for message of type '<Cone>"
  (cl:format cl:nil "geometry_msgs/Point position  # coordinate of cone in [x, y]                      圆锥的坐标~%std_msgs/String color           # color of cone, 'b' = blue, 'y' = yellow, 'r' = red                     观看到圆锥的坐标~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cone)))
  "Returns full string definition for message of type 'Cone"
  (cl:format cl:nil "geometry_msgs/Point position  # coordinate of cone in [x, y]                      圆锥的坐标~%std_msgs/String color           # color of cone, 'b' = blue, 'y' = yellow, 'r' = red                     观看到圆锥的坐标~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cone>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cone>))
  "Converts a ROS message object to a list"
  (cl:list 'Cone
    (cl:cons ':position (position msg))
    (cl:cons ':color (color msg))
))
