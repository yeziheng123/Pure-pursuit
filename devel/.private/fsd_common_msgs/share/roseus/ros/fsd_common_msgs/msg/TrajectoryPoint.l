;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::TrajectoryPoint)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'TrajectoryPoint (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::TRAJECTORYPOINT")
  (make-package "FSD_COMMON_MSGS::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fsd_common_msgs::TrajectoryPoint
  :super ros::object
  :slots (_pts _yaw _curvature _velocity _r _acc ))

(defmethod fsd_common_msgs::TrajectoryPoint
  (:init
   (&key
    ((:pts __pts) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) (instance std_msgs::Float64 :init))
    ((:curvature __curvature) (instance std_msgs::Float64 :init))
    ((:velocity __velocity) (instance std_msgs::Float64 :init))
    ((:r __r) (instance std_msgs::Float64 :init))
    ((:acc __acc) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _pts __pts)
   (setq _yaw __yaw)
   (setq _curvature __curvature)
   (setq _velocity __velocity)
   (setq _r __r)
   (setq _acc __acc)
   self)
  (:pts
   (&rest __pts)
   (if (keywordp (car __pts))
       (send* _pts __pts)
     (progn
       (if __pts (setq _pts (car __pts)))
       _pts)))
  (:yaw
   (&rest __yaw)
   (if (keywordp (car __yaw))
       (send* _yaw __yaw)
     (progn
       (if __yaw (setq _yaw (car __yaw)))
       _yaw)))
  (:curvature
   (&rest __curvature)
   (if (keywordp (car __curvature))
       (send* _curvature __curvature)
     (progn
       (if __curvature (setq _curvature (car __curvature)))
       _curvature)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:r
   (&rest __r)
   (if (keywordp (car __r))
       (send* _r __r)
     (progn
       (if __r (setq _r (car __r)))
       _r)))
  (:acc
   (&rest __acc)
   (if (keywordp (car __acc))
       (send* _acc __acc)
     (progn
       (if __acc (setq _acc (car __acc)))
       _acc)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pts
    (send _pts :serialization-length)
    ;; std_msgs/Float64 _yaw
    (send _yaw :serialization-length)
    ;; std_msgs/Float64 _curvature
    (send _curvature :serialization-length)
    ;; std_msgs/Float64 _velocity
    (send _velocity :serialization-length)
    ;; std_msgs/Float64 _r
    (send _r :serialization-length)
    ;; std_msgs/Float64 _acc
    (send _acc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pts
       (send _pts :serialize s)
     ;; std_msgs/Float64 _yaw
       (send _yaw :serialize s)
     ;; std_msgs/Float64 _curvature
       (send _curvature :serialize s)
     ;; std_msgs/Float64 _velocity
       (send _velocity :serialize s)
     ;; std_msgs/Float64 _r
       (send _r :serialize s)
     ;; std_msgs/Float64 _acc
       (send _acc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pts
     (send _pts :deserialize buf ptr-) (incf ptr- (send _pts :serialization-length))
   ;; std_msgs/Float64 _yaw
     (send _yaw :deserialize buf ptr-) (incf ptr- (send _yaw :serialization-length))
   ;; std_msgs/Float64 _curvature
     (send _curvature :deserialize buf ptr-) (incf ptr- (send _curvature :serialization-length))
   ;; std_msgs/Float64 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; std_msgs/Float64 _r
     (send _r :deserialize buf ptr-) (incf ptr- (send _r :serialization-length))
   ;; std_msgs/Float64 _acc
     (send _acc :deserialize buf ptr-) (incf ptr- (send _acc :serialization-length))
   ;;
   self)
  )

(setf (get fsd_common_msgs::TrajectoryPoint :md5sum-) "b3b64e448d35243415e296a8071da00c")
(setf (get fsd_common_msgs::TrajectoryPoint :datatype-) "fsd_common_msgs/TrajectoryPoint")
(setf (get fsd_common_msgs::TrajectoryPoint :definition-)
      "geometry_msgs/Point pts                       #是一个二维坐标点  包含一个点在自由空间的位置
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



(provide :fsd_common_msgs/TrajectoryPoint "b3b64e448d35243415e296a8071da00c")


