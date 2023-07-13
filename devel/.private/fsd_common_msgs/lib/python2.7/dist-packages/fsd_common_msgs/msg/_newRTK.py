# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fsd_common_msgs/newRTK.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class newRTK(genpy.Message):
  _md5sum = "b3c30086cdc95e29a58c43c5caf9b79c"
  _type = "fsd_common_msgs/newRTK"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

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
"""
  __slots__ = ['header','latitude','longitude','altitude','north_velocity','east_velocity','ground_velocity','roll','pitch','azimuth','x_angular_velocity','y_angular_velocity','z_angular_velocity','x_acc','y_acc','z_acc','latitude_std','longitude_std','altitude_std','north_velocity_std','east_velocity_std','ground_velocity_std','roll_std','pitch_std','azimuth_std','ins_status','position_type','sec_of_week','gps_week_number','temperature','wheel_speed_status','heading_type','numsv']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float32','float32','float32','float32','float32','float32','float32','float32','float32','uint32','uint32','float64','float64','float32','uint32','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,latitude,longitude,altitude,north_velocity,east_velocity,ground_velocity,roll,pitch,azimuth,x_angular_velocity,y_angular_velocity,z_angular_velocity,x_acc,y_acc,z_acc,latitude_std,longitude_std,altitude_std,north_velocity_std,east_velocity_std,ground_velocity_std,roll_std,pitch_std,azimuth_std,ins_status,position_type,sec_of_week,gps_week_number,temperature,wheel_speed_status,heading_type,numsv

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(newRTK, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.north_velocity is None:
        self.north_velocity = 0.
      if self.east_velocity is None:
        self.east_velocity = 0.
      if self.ground_velocity is None:
        self.ground_velocity = 0.
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.azimuth is None:
        self.azimuth = 0.
      if self.x_angular_velocity is None:
        self.x_angular_velocity = 0.
      if self.y_angular_velocity is None:
        self.y_angular_velocity = 0.
      if self.z_angular_velocity is None:
        self.z_angular_velocity = 0.
      if self.x_acc is None:
        self.x_acc = 0.
      if self.y_acc is None:
        self.y_acc = 0.
      if self.z_acc is None:
        self.z_acc = 0.
      if self.latitude_std is None:
        self.latitude_std = 0.
      if self.longitude_std is None:
        self.longitude_std = 0.
      if self.altitude_std is None:
        self.altitude_std = 0.
      if self.north_velocity_std is None:
        self.north_velocity_std = 0.
      if self.east_velocity_std is None:
        self.east_velocity_std = 0.
      if self.ground_velocity_std is None:
        self.ground_velocity_std = 0.
      if self.roll_std is None:
        self.roll_std = 0.
      if self.pitch_std is None:
        self.pitch_std = 0.
      if self.azimuth_std is None:
        self.azimuth_std = 0.
      if self.ins_status is None:
        self.ins_status = 0
      if self.position_type is None:
        self.position_type = 0
      if self.sec_of_week is None:
        self.sec_of_week = 0.
      if self.gps_week_number is None:
        self.gps_week_number = 0.
      if self.temperature is None:
        self.temperature = 0.
      if self.wheel_speed_status is None:
        self.wheel_speed_status = 0
      if self.heading_type is None:
        self.heading_type = 0
      if self.numsv is None:
        self.numsv = 0
    else:
      self.header = std_msgs.msg.Header()
      self.latitude = 0.
      self.longitude = 0.
      self.altitude = 0.
      self.north_velocity = 0.
      self.east_velocity = 0.
      self.ground_velocity = 0.
      self.roll = 0.
      self.pitch = 0.
      self.azimuth = 0.
      self.x_angular_velocity = 0.
      self.y_angular_velocity = 0.
      self.z_angular_velocity = 0.
      self.x_acc = 0.
      self.y_acc = 0.
      self.z_acc = 0.
      self.latitude_std = 0.
      self.longitude_std = 0.
      self.altitude_std = 0.
      self.north_velocity_std = 0.
      self.east_velocity_std = 0.
      self.ground_velocity_std = 0.
      self.roll_std = 0.
      self.pitch_std = 0.
      self.azimuth_std = 0.
      self.ins_status = 0
      self.position_type = 0
      self.sec_of_week = 0.
      self.gps_week_number = 0.
      self.temperature = 0.
      self.wheel_speed_status = 0
      self.heading_type = 0
      self.numsv = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_15d9f2I2df3I().pack(_x.latitude, _x.longitude, _x.altitude, _x.north_velocity, _x.east_velocity, _x.ground_velocity, _x.roll, _x.pitch, _x.azimuth, _x.x_angular_velocity, _x.y_angular_velocity, _x.z_angular_velocity, _x.x_acc, _x.y_acc, _x.z_acc, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.ground_velocity_std, _x.roll_std, _x.pitch_std, _x.azimuth_std, _x.ins_status, _x.position_type, _x.sec_of_week, _x.gps_week_number, _x.temperature, _x.wheel_speed_status, _x.heading_type, _x.numsv))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 196
      (_x.latitude, _x.longitude, _x.altitude, _x.north_velocity, _x.east_velocity, _x.ground_velocity, _x.roll, _x.pitch, _x.azimuth, _x.x_angular_velocity, _x.y_angular_velocity, _x.z_angular_velocity, _x.x_acc, _x.y_acc, _x.z_acc, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.ground_velocity_std, _x.roll_std, _x.pitch_std, _x.azimuth_std, _x.ins_status, _x.position_type, _x.sec_of_week, _x.gps_week_number, _x.temperature, _x.wheel_speed_status, _x.heading_type, _x.numsv,) = _get_struct_15d9f2I2df3I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_15d9f2I2df3I().pack(_x.latitude, _x.longitude, _x.altitude, _x.north_velocity, _x.east_velocity, _x.ground_velocity, _x.roll, _x.pitch, _x.azimuth, _x.x_angular_velocity, _x.y_angular_velocity, _x.z_angular_velocity, _x.x_acc, _x.y_acc, _x.z_acc, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.ground_velocity_std, _x.roll_std, _x.pitch_std, _x.azimuth_std, _x.ins_status, _x.position_type, _x.sec_of_week, _x.gps_week_number, _x.temperature, _x.wheel_speed_status, _x.heading_type, _x.numsv))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 196
      (_x.latitude, _x.longitude, _x.altitude, _x.north_velocity, _x.east_velocity, _x.ground_velocity, _x.roll, _x.pitch, _x.azimuth, _x.x_angular_velocity, _x.y_angular_velocity, _x.z_angular_velocity, _x.x_acc, _x.y_acc, _x.z_acc, _x.latitude_std, _x.longitude_std, _x.altitude_std, _x.north_velocity_std, _x.east_velocity_std, _x.ground_velocity_std, _x.roll_std, _x.pitch_std, _x.azimuth_std, _x.ins_status, _x.position_type, _x.sec_of_week, _x.gps_week_number, _x.temperature, _x.wheel_speed_status, _x.heading_type, _x.numsv,) = _get_struct_15d9f2I2df3I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_15d9f2I2df3I = None
def _get_struct_15d9f2I2df3I():
    global _struct_15d9f2I2df3I
    if _struct_15d9f2I2df3I is None:
        _struct_15d9f2I2df3I = struct.Struct("<15d9f2I2df3I")
    return _struct_15d9f2I2df3I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I