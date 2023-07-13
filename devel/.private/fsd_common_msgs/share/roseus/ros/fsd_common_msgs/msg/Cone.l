;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::Cone)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'Cone (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::CONE")
  (make-package "FSD_COMMON_MSGS::CONE"))

(in-package "ROS")
;;//! \htmlinclude Cone.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fsd_common_msgs::Cone
  :super ros::object
  :slots (_position _color ))

(defmethod fsd_common_msgs::Cone
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:color __color) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _color __color)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; std_msgs/String _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; std_msgs/String _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; std_msgs/String _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(setf (get fsd_common_msgs::Cone :md5sum-) "a503fe5c66b468cc3dd8166c52d2bed4")
(setf (get fsd_common_msgs::Cone :datatype-) "fsd_common_msgs/Cone")
(setf (get fsd_common_msgs::Cone :definition-)
      "geometry_msgs/Point position  # coordinate of cone in [x, y]                      圆锥的坐标
std_msgs/String color           # color of cone, 'b' = blue, 'y' = yellow, 'r' = red                     观看到圆锥的坐标

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/String
string data

")



(provide :fsd_common_msgs/Cone "a503fe5c66b468cc3dd8166c52d2bed4")


