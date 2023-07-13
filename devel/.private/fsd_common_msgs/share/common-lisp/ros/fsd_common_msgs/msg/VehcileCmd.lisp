; Auto-generated. Do not edit!


(cl:in-package fsd_common_msgs-msg)


;//! \htmlinclude VehcileCmd.msg.html

(cl:defclass <VehcileCmd> (roslisp-msg-protocol:ros-message)
  ((head1
    :reader head1
    :initarg :head1
    :type cl:fixnum
    :initform 0)
   (head2
    :reader head2
    :initarg :head2
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (steering
    :reader steering
    :initarg :steering
    :type cl:fixnum
    :initform 0)
   (brake_force
    :reader brake_force
    :initarg :brake_force
    :type cl:fixnum
    :initform 0)
   (pedal_ratio
    :reader pedal_ratio
    :initarg :pedal_ratio
    :type cl:fixnum
    :initform 0)
   (gear_position
    :reader gear_position
    :initarg :gear_position
    :type cl:fixnum
    :initform 0)
   (working_mode
    :reader working_mode
    :initarg :working_mode
    :type cl:fixnum
    :initform 0)
   (racing_num
    :reader racing_num
    :initarg :racing_num
    :type cl:fixnum
    :initform 0)
   (racing_status
    :reader racing_status
    :initarg :racing_status
    :type cl:fixnum
    :initform 0)
   (checksum
    :reader checksum
    :initarg :checksum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehcileCmd (<VehcileCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehcileCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehcileCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsd_common_msgs-msg:<VehcileCmd> is deprecated: use fsd_common_msgs-msg:VehcileCmd instead.")))

(cl:ensure-generic-function 'head1-val :lambda-list '(m))
(cl:defmethod head1-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:head1-val is deprecated.  Use fsd_common_msgs-msg:head1 instead.")
  (head1 m))

(cl:ensure-generic-function 'head2-val :lambda-list '(m))
(cl:defmethod head2-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:head2-val is deprecated.  Use fsd_common_msgs-msg:head2 instead.")
  (head2 m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:length-val is deprecated.  Use fsd_common_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:steering-val is deprecated.  Use fsd_common_msgs-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'brake_force-val :lambda-list '(m))
(cl:defmethod brake_force-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:brake_force-val is deprecated.  Use fsd_common_msgs-msg:brake_force instead.")
  (brake_force m))

(cl:ensure-generic-function 'pedal_ratio-val :lambda-list '(m))
(cl:defmethod pedal_ratio-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:pedal_ratio-val is deprecated.  Use fsd_common_msgs-msg:pedal_ratio instead.")
  (pedal_ratio m))

(cl:ensure-generic-function 'gear_position-val :lambda-list '(m))
(cl:defmethod gear_position-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:gear_position-val is deprecated.  Use fsd_common_msgs-msg:gear_position instead.")
  (gear_position m))

(cl:ensure-generic-function 'working_mode-val :lambda-list '(m))
(cl:defmethod working_mode-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:working_mode-val is deprecated.  Use fsd_common_msgs-msg:working_mode instead.")
  (working_mode m))

(cl:ensure-generic-function 'racing_num-val :lambda-list '(m))
(cl:defmethod racing_num-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:racing_num-val is deprecated.  Use fsd_common_msgs-msg:racing_num instead.")
  (racing_num m))

(cl:ensure-generic-function 'racing_status-val :lambda-list '(m))
(cl:defmethod racing_status-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:racing_status-val is deprecated.  Use fsd_common_msgs-msg:racing_status instead.")
  (racing_status m))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <VehcileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsd_common_msgs-msg:checksum-val is deprecated.  Use fsd_common_msgs-msg:checksum instead.")
  (checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehcileCmd>) ostream)
  "Serializes a message object of type '<VehcileCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_force)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pedal_ratio)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'working_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'racing_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'racing_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehcileCmd>) istream)
  "Deserializes a message object of type '<VehcileCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_force)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pedal_ratio)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'working_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'racing_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'racing_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehcileCmd>)))
  "Returns string type for a message object of type '<VehcileCmd>"
  "fsd_common_msgs/VehcileCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehcileCmd)))
  "Returns string type for a message object of type 'VehcileCmd"
  "fsd_common_msgs/VehcileCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehcileCmd>)))
  "Returns md5sum for a message object of type '<VehcileCmd>"
  "f174333528b91e4bd29b231b98ffd01e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehcileCmd)))
  "Returns md5sum for a message object of type 'VehcileCmd"
  "f174333528b91e4bd29b231b98ffd01e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehcileCmd>)))
  "Returns full string definition for message of type '<VehcileCmd>"
  (cl:format cl:nil "uint8 head1~%uint8 head2~%uint8 length~%uint8 steering~%uint8 brake_force~%uint8 pedal_ratio~%uint8 gear_position~%uint8 working_mode~%uint8 racing_num~%uint8 racing_status~%uint16 checksum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehcileCmd)))
  "Returns full string definition for message of type 'VehcileCmd"
  (cl:format cl:nil "uint8 head1~%uint8 head2~%uint8 length~%uint8 steering~%uint8 brake_force~%uint8 pedal_ratio~%uint8 gear_position~%uint8 working_mode~%uint8 racing_num~%uint8 racing_status~%uint16 checksum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehcileCmd>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehcileCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'VehcileCmd
    (cl:cons ':head1 (head1 msg))
    (cl:cons ':head2 (head2 msg))
    (cl:cons ':length (length msg))
    (cl:cons ':steering (steering msg))
    (cl:cons ':brake_force (brake_force msg))
    (cl:cons ':pedal_ratio (pedal_ratio msg))
    (cl:cons ':gear_position (gear_position msg))
    (cl:cons ':working_mode (working_mode msg))
    (cl:cons ':racing_num (racing_num msg))
    (cl:cons ':racing_status (racing_status msg))
    (cl:cons ':checksum (checksum msg))
))
