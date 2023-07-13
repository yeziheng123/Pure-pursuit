// Auto-generated. Do not edit!

// (in-package fsd_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryPoint = require('./TrajectoryPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 64 * object.trajectory.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsd_common_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6a2c3fb04ebbbd5dad7a720ce5bc5ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    fsd_common_msgs/TrajectoryPoint[] trajectory                                          #轨迹
      
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
    
    ================================================================================
    MSG: fsd_common_msgs/TrajectoryPoint
    geometry_msgs/Point pts                       #是一个二维坐标点  包含一个点在自由空间的位置
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = TrajectoryPoint.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    return resolved;
    }
};

module.exports = Trajectory;
