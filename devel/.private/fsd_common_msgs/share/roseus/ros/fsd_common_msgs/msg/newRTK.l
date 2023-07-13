;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::newRTK)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'newRTK (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::NEWRTK")
  (make-package "FSD_COMMON_MSGS::NEWRTK"))

(in-package "ROS")
;;//! \htmlinclude newRTK.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fsd_common_msgs::newRTK
  :super ros::object
  :slots (_header _latitude _longitude _altitude _north_velocity _east_velocity _ground_velocity _roll _pitch _azimuth _x_angular_velocity _y_angular_velocity _z_angular_velocity _x_acc _y_acc _z_acc _latitude_std _longitude_std _altitude_std _north_velocity_std _east_velocity_std _ground_velocity_std _roll_std _pitch_std _azimuth_std _ins_status _position_type _sec_of_week _gps_week_number _temperature _wheel_speed_status _heading_type _numsv ))

(defmethod fsd_common_msgs::newRTK
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:north_velocity __north_velocity) 0.0)
    ((:east_velocity __east_velocity) 0.0)
    ((:ground_velocity __ground_velocity) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:x_angular_velocity __x_angular_velocity) 0.0)
    ((:y_angular_velocity __y_angular_velocity) 0.0)
    ((:z_angular_velocity __z_angular_velocity) 0.0)
    ((:x_acc __x_acc) 0.0)
    ((:y_acc __y_acc) 0.0)
    ((:z_acc __z_acc) 0.0)
    ((:latitude_std __latitude_std) 0.0)
    ((:longitude_std __longitude_std) 0.0)
    ((:altitude_std __altitude_std) 0.0)
    ((:north_velocity_std __north_velocity_std) 0.0)
    ((:east_velocity_std __east_velocity_std) 0.0)
    ((:ground_velocity_std __ground_velocity_std) 0.0)
    ((:roll_std __roll_std) 0.0)
    ((:pitch_std __pitch_std) 0.0)
    ((:azimuth_std __azimuth_std) 0.0)
    ((:ins_status __ins_status) 0)
    ((:position_type __position_type) 0)
    ((:sec_of_week __sec_of_week) 0.0)
    ((:gps_week_number __gps_week_number) 0.0)
    ((:temperature __temperature) 0.0)
    ((:wheel_speed_status __wheel_speed_status) 0)
    ((:heading_type __heading_type) 0)
    ((:numsv __numsv) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _north_velocity (float __north_velocity))
   (setq _east_velocity (float __east_velocity))
   (setq _ground_velocity (float __ground_velocity))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _azimuth (float __azimuth))
   (setq _x_angular_velocity (float __x_angular_velocity))
   (setq _y_angular_velocity (float __y_angular_velocity))
   (setq _z_angular_velocity (float __z_angular_velocity))
   (setq _x_acc (float __x_acc))
   (setq _y_acc (float __y_acc))
   (setq _z_acc (float __z_acc))
   (setq _latitude_std (float __latitude_std))
   (setq _longitude_std (float __longitude_std))
   (setq _altitude_std (float __altitude_std))
   (setq _north_velocity_std (float __north_velocity_std))
   (setq _east_velocity_std (float __east_velocity_std))
   (setq _ground_velocity_std (float __ground_velocity_std))
   (setq _roll_std (float __roll_std))
   (setq _pitch_std (float __pitch_std))
   (setq _azimuth_std (float __azimuth_std))
   (setq _ins_status (round __ins_status))
   (setq _position_type (round __position_type))
   (setq _sec_of_week (float __sec_of_week))
   (setq _gps_week_number (float __gps_week_number))
   (setq _temperature (float __temperature))
   (setq _wheel_speed_status (round __wheel_speed_status))
   (setq _heading_type (round __heading_type))
   (setq _numsv (round __numsv))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:north_velocity
   (&optional __north_velocity)
   (if __north_velocity (setq _north_velocity __north_velocity)) _north_velocity)
  (:east_velocity
   (&optional __east_velocity)
   (if __east_velocity (setq _east_velocity __east_velocity)) _east_velocity)
  (:ground_velocity
   (&optional __ground_velocity)
   (if __ground_velocity (setq _ground_velocity __ground_velocity)) _ground_velocity)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:x_angular_velocity
   (&optional __x_angular_velocity)
   (if __x_angular_velocity (setq _x_angular_velocity __x_angular_velocity)) _x_angular_velocity)
  (:y_angular_velocity
   (&optional __y_angular_velocity)
   (if __y_angular_velocity (setq _y_angular_velocity __y_angular_velocity)) _y_angular_velocity)
  (:z_angular_velocity
   (&optional __z_angular_velocity)
   (if __z_angular_velocity (setq _z_angular_velocity __z_angular_velocity)) _z_angular_velocity)
  (:x_acc
   (&optional __x_acc)
   (if __x_acc (setq _x_acc __x_acc)) _x_acc)
  (:y_acc
   (&optional __y_acc)
   (if __y_acc (setq _y_acc __y_acc)) _y_acc)
  (:z_acc
   (&optional __z_acc)
   (if __z_acc (setq _z_acc __z_acc)) _z_acc)
  (:latitude_std
   (&optional __latitude_std)
   (if __latitude_std (setq _latitude_std __latitude_std)) _latitude_std)
  (:longitude_std
   (&optional __longitude_std)
   (if __longitude_std (setq _longitude_std __longitude_std)) _longitude_std)
  (:altitude_std
   (&optional __altitude_std)
   (if __altitude_std (setq _altitude_std __altitude_std)) _altitude_std)
  (:north_velocity_std
   (&optional __north_velocity_std)
   (if __north_velocity_std (setq _north_velocity_std __north_velocity_std)) _north_velocity_std)
  (:east_velocity_std
   (&optional __east_velocity_std)
   (if __east_velocity_std (setq _east_velocity_std __east_velocity_std)) _east_velocity_std)
  (:ground_velocity_std
   (&optional __ground_velocity_std)
   (if __ground_velocity_std (setq _ground_velocity_std __ground_velocity_std)) _ground_velocity_std)
  (:roll_std
   (&optional __roll_std)
   (if __roll_std (setq _roll_std __roll_std)) _roll_std)
  (:pitch_std
   (&optional __pitch_std)
   (if __pitch_std (setq _pitch_std __pitch_std)) _pitch_std)
  (:azimuth_std
   (&optional __azimuth_std)
   (if __azimuth_std (setq _azimuth_std __azimuth_std)) _azimuth_std)
  (:ins_status
   (&optional __ins_status)
   (if __ins_status (setq _ins_status __ins_status)) _ins_status)
  (:position_type
   (&optional __position_type)
   (if __position_type (setq _position_type __position_type)) _position_type)
  (:sec_of_week
   (&optional __sec_of_week)
   (if __sec_of_week (setq _sec_of_week __sec_of_week)) _sec_of_week)
  (:gps_week_number
   (&optional __gps_week_number)
   (if __gps_week_number (setq _gps_week_number __gps_week_number)) _gps_week_number)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:wheel_speed_status
   (&optional __wheel_speed_status)
   (if __wheel_speed_status (setq _wheel_speed_status __wheel_speed_status)) _wheel_speed_status)
  (:heading_type
   (&optional __heading_type)
   (if __heading_type (setq _heading_type __heading_type)) _heading_type)
  (:numsv
   (&optional __numsv)
   (if __numsv (setq _numsv __numsv)) _numsv)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _north_velocity
    8
    ;; float64 _east_velocity
    8
    ;; float64 _ground_velocity
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _azimuth
    8
    ;; float64 _x_angular_velocity
    8
    ;; float64 _y_angular_velocity
    8
    ;; float64 _z_angular_velocity
    8
    ;; float64 _x_acc
    8
    ;; float64 _y_acc
    8
    ;; float64 _z_acc
    8
    ;; float32 _latitude_std
    4
    ;; float32 _longitude_std
    4
    ;; float32 _altitude_std
    4
    ;; float32 _north_velocity_std
    4
    ;; float32 _east_velocity_std
    4
    ;; float32 _ground_velocity_std
    4
    ;; float32 _roll_std
    4
    ;; float32 _pitch_std
    4
    ;; float32 _azimuth_std
    4
    ;; uint32 _ins_status
    4
    ;; uint32 _position_type
    4
    ;; float64 _sec_of_week
    8
    ;; float64 _gps_week_number
    8
    ;; float32 _temperature
    4
    ;; uint32 _wheel_speed_status
    4
    ;; uint32 _heading_type
    4
    ;; uint32 _numsv
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _north_velocity
       (sys::poke _north_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east_velocity
       (sys::poke _east_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ground_velocity
       (sys::poke _ground_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_angular_velocity
       (sys::poke _x_angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_angular_velocity
       (sys::poke _y_angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_angular_velocity
       (sys::poke _z_angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_acc
       (sys::poke _x_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_acc
       (sys::poke _y_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_acc
       (sys::poke _z_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _latitude_std
       (sys::poke _latitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_std
       (sys::poke _longitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude_std
       (sys::poke _altitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _north_velocity_std
       (sys::poke _north_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _east_velocity_std
       (sys::poke _east_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ground_velocity_std
       (sys::poke _ground_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_std
       (sys::poke _roll_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_std
       (sys::poke _pitch_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth_std
       (sys::poke _azimuth_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _ins_status
       (write-long _ins_status s)
     ;; uint32 _position_type
       (write-long _position_type s)
     ;; float64 _sec_of_week
       (sys::poke _sec_of_week (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gps_week_number
       (sys::poke _gps_week_number (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _wheel_speed_status
       (write-long _wheel_speed_status s)
     ;; uint32 _heading_type
       (write-long _heading_type s)
     ;; uint32 _numsv
       (write-long _numsv s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _north_velocity
     (setq _north_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east_velocity
     (setq _east_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ground_velocity
     (setq _ground_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_angular_velocity
     (setq _x_angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_angular_velocity
     (setq _y_angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_angular_velocity
     (setq _z_angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_acc
     (setq _x_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_acc
     (setq _y_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_acc
     (setq _z_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _latitude_std
     (setq _latitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_std
     (setq _longitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude_std
     (setq _altitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _north_velocity_std
     (setq _north_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _east_velocity_std
     (setq _east_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ground_velocity_std
     (setq _ground_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_std
     (setq _roll_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_std
     (setq _pitch_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth_std
     (setq _azimuth_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _ins_status
     (setq _ins_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _position_type
     (setq _position_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _sec_of_week
     (setq _sec_of_week (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gps_week_number
     (setq _gps_week_number (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _wheel_speed_status
     (setq _wheel_speed_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _heading_type
     (setq _heading_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _numsv
     (setq _numsv (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fsd_common_msgs::newRTK :md5sum-) "b3c30086cdc95e29a58c43c5caf9b79c")
(setf (get fsd_common_msgs::newRTK :datatype-) "fsd_common_msgs/newRTK")
(setf (get fsd_common_msgs::newRTK :definition-)
      "Header header

float64 latitude	
float64 longitude
float64 altitude

float64 north_velocity	
float64 east_velocity
float64 ground_velocity

float64 roll	
float64 pitch
float64 azimuth

float64 x_angular_velocity	
float64 y_angular_velocity
float64 z_angular_velocity

float64 x_acc	
float64 y_acc
float64 z_acc

float32 latitude_std	
float32 longitude_std
float32 altitude_std

float32 north_velocity_std	
float32 east_velocity_std
float32 ground_velocity_std


float32 roll_std	
float32 pitch_std
float32 azimuth_std 


uint32 ins_status	
uint32 position_type	 

float64 sec_of_week	

float64 gps_week_number		

float32 temperature	

uint32 wheel_speed_status	



uint32 heading_type		
uint32 numsv		



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

")



(provide :fsd_common_msgs/newRTK "b3c30086cdc95e29a58c43c5caf9b79c")


