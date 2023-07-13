;; Auto-generated. Do not edit!


(when (boundp 'fsd_common_msgs::VehcileCmd)
  (if (not (find-package "FSD_COMMON_MSGS"))
    (make-package "FSD_COMMON_MSGS"))
  (shadow 'VehcileCmd (find-package "FSD_COMMON_MSGS")))
(unless (find-package "FSD_COMMON_MSGS::VEHCILECMD")
  (make-package "FSD_COMMON_MSGS::VEHCILECMD"))

(in-package "ROS")
;;//! \htmlinclude VehcileCmd.msg.html


(defclass fsd_common_msgs::VehcileCmd
  :super ros::object
  :slots (_head1 _head2 _length _steering _brake_force _pedal_ratio _gear_position _working_mode _racing_num _racing_status _checksum ))

(defmethod fsd_common_msgs::VehcileCmd
  (:init
   (&key
    ((:head1 __head1) 0)
    ((:head2 __head2) 0)
    ((:length __length) 0)
    ((:steering __steering) 0)
    ((:brake_force __brake_force) 0)
    ((:pedal_ratio __pedal_ratio) 0)
    ((:gear_position __gear_position) 0)
    ((:working_mode __working_mode) 0)
    ((:racing_num __racing_num) 0)
    ((:racing_status __racing_status) 0)
    ((:checksum __checksum) 0)
    )
   (send-super :init)
   (setq _head1 (round __head1))
   (setq _head2 (round __head2))
   (setq _length (round __length))
   (setq _steering (round __steering))
   (setq _brake_force (round __brake_force))
   (setq _pedal_ratio (round __pedal_ratio))
   (setq _gear_position (round __gear_position))
   (setq _working_mode (round __working_mode))
   (setq _racing_num (round __racing_num))
   (setq _racing_status (round __racing_status))
   (setq _checksum (round __checksum))
   self)
  (:head1
   (&optional __head1)
   (if __head1 (setq _head1 __head1)) _head1)
  (:head2
   (&optional __head2)
   (if __head2 (setq _head2 __head2)) _head2)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:brake_force
   (&optional __brake_force)
   (if __brake_force (setq _brake_force __brake_force)) _brake_force)
  (:pedal_ratio
   (&optional __pedal_ratio)
   (if __pedal_ratio (setq _pedal_ratio __pedal_ratio)) _pedal_ratio)
  (:gear_position
   (&optional __gear_position)
   (if __gear_position (setq _gear_position __gear_position)) _gear_position)
  (:working_mode
   (&optional __working_mode)
   (if __working_mode (setq _working_mode __working_mode)) _working_mode)
  (:racing_num
   (&optional __racing_num)
   (if __racing_num (setq _racing_num __racing_num)) _racing_num)
  (:racing_status
   (&optional __racing_status)
   (if __racing_status (setq _racing_status __racing_status)) _racing_status)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:serialization-length
   ()
   (+
    ;; uint8 _head1
    1
    ;; uint8 _head2
    1
    ;; uint8 _length
    1
    ;; uint8 _steering
    1
    ;; uint8 _brake_force
    1
    ;; uint8 _pedal_ratio
    1
    ;; uint8 _gear_position
    1
    ;; uint8 _working_mode
    1
    ;; uint8 _racing_num
    1
    ;; uint8 _racing_status
    1
    ;; uint16 _checksum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _head1
       (write-byte _head1 s)
     ;; uint8 _head2
       (write-byte _head2 s)
     ;; uint8 _length
       (write-byte _length s)
     ;; uint8 _steering
       (write-byte _steering s)
     ;; uint8 _brake_force
       (write-byte _brake_force s)
     ;; uint8 _pedal_ratio
       (write-byte _pedal_ratio s)
     ;; uint8 _gear_position
       (write-byte _gear_position s)
     ;; uint8 _working_mode
       (write-byte _working_mode s)
     ;; uint8 _racing_num
       (write-byte _racing_num s)
     ;; uint8 _racing_status
       (write-byte _racing_status s)
     ;; uint16 _checksum
       (write-word _checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _head1
     (setq _head1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _head2
     (setq _head2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _steering
     (setq _steering (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brake_force
     (setq _brake_force (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pedal_ratio
     (setq _pedal_ratio (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear_position
     (setq _gear_position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _working_mode
     (setq _working_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _racing_num
     (setq _racing_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _racing_status
     (setq _racing_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _checksum
     (setq _checksum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get fsd_common_msgs::VehcileCmd :md5sum-) "f174333528b91e4bd29b231b98ffd01e")
(setf (get fsd_common_msgs::VehcileCmd :datatype-) "fsd_common_msgs/VehcileCmd")
(setf (get fsd_common_msgs::VehcileCmd :definition-)
      "uint8 head1
uint8 head2
uint8 length
uint8 steering
uint8 brake_force
uint8 pedal_ratio
uint8 gear_position
uint8 working_mode
uint8 racing_num
uint8 racing_status
uint16 checksum


")



(provide :fsd_common_msgs/VehcileCmd "f174333528b91e4bd29b231b98ffd01e")


