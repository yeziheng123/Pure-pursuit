# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fsd_common_msgs/TrajectoryPoint.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class TrajectoryPoint(genpy.Message):
  _md5sum = "b3b64e448d35243415e296a8071da00c"
  _type = "fsd_common_msgs/TrajectoryPoint"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point pts                       #是一个二维坐标点  包含一个点在自由空间的位置
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
float64 data"""
  __slots__ = ['pts','yaw','curvature','velocity','r','acc']
  _slot_types = ['geometry_msgs/Point','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64','std_msgs/Float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pts,yaw,curvature,velocity,r,acc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrajectoryPoint, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pts is None:
        self.pts = geometry_msgs.msg.Point()
      if self.yaw is None:
        self.yaw = std_msgs.msg.Float64()
      if self.curvature is None:
        self.curvature = std_msgs.msg.Float64()
      if self.velocity is None:
        self.velocity = std_msgs.msg.Float64()
      if self.r is None:
        self.r = std_msgs.msg.Float64()
      if self.acc is None:
        self.acc = std_msgs.msg.Float64()
    else:
      self.pts = geometry_msgs.msg.Point()
      self.yaw = std_msgs.msg.Float64()
      self.curvature = std_msgs.msg.Float64()
      self.velocity = std_msgs.msg.Float64()
      self.r = std_msgs.msg.Float64()
      self.acc = std_msgs.msg.Float64()

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
      buff.write(_get_struct_8d().pack(_x.pts.x, _x.pts.y, _x.pts.z, _x.yaw.data, _x.curvature.data, _x.velocity.data, _x.r.data, _x.acc.data))
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
      if self.pts is None:
        self.pts = geometry_msgs.msg.Point()
      if self.yaw is None:
        self.yaw = std_msgs.msg.Float64()
      if self.curvature is None:
        self.curvature = std_msgs.msg.Float64()
      if self.velocity is None:
        self.velocity = std_msgs.msg.Float64()
      if self.r is None:
        self.r = std_msgs.msg.Float64()
      if self.acc is None:
        self.acc = std_msgs.msg.Float64()
      end = 0
      _x = self
      start = end
      end += 64
      (_x.pts.x, _x.pts.y, _x.pts.z, _x.yaw.data, _x.curvature.data, _x.velocity.data, _x.r.data, _x.acc.data,) = _get_struct_8d().unpack(str[start:end])
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
      buff.write(_get_struct_8d().pack(_x.pts.x, _x.pts.y, _x.pts.z, _x.yaw.data, _x.curvature.data, _x.velocity.data, _x.r.data, _x.acc.data))
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
      if self.pts is None:
        self.pts = geometry_msgs.msg.Point()
      if self.yaw is None:
        self.yaw = std_msgs.msg.Float64()
      if self.curvature is None:
        self.curvature = std_msgs.msg.Float64()
      if self.velocity is None:
        self.velocity = std_msgs.msg.Float64()
      if self.r is None:
        self.r = std_msgs.msg.Float64()
      if self.acc is None:
        self.acc = std_msgs.msg.Float64()
      end = 0
      _x = self
      start = end
      end += 64
      (_x.pts.x, _x.pts.y, _x.pts.z, _x.yaw.data, _x.curvature.data, _x.velocity.data, _x.r.data, _x.acc.data,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
