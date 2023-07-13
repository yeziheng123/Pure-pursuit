// Auto-generated. Do not edit!

// (in-package fsd_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pts = null;
      this.yaw = null;
      this.curvature = null;
      this.velocity = null;
      this.r = null;
      this.acc = null;
    }
    else {
      if (initObj.hasOwnProperty('pts')) {
        this.pts = initObj.pts
      }
      else {
        this.pts = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [pts]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pts, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.yaw, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.curvature, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.r, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [pts]
    data.pts = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsd_common_msgs/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3b64e448d35243415e296a8071da00c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrajectoryPoint(null);
    if (msg.pts !== undefined) {
      resolved.pts = geometry_msgs.msg.Point.Resolve(msg.pts)
    }
    else {
      resolved.pts = new geometry_msgs.msg.Point()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = std_msgs.msg.Float64.Resolve(msg.yaw)
    }
    else {
      resolved.yaw = new std_msgs.msg.Float64()
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = std_msgs.msg.Float64.Resolve(msg.curvature)
    }
    else {
      resolved.curvature = new std_msgs.msg.Float64()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = std_msgs.msg.Float64.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new std_msgs.msg.Float64()
    }

    if (msg.r !== undefined) {
      resolved.r = std_msgs.msg.Float64.Resolve(msg.r)
    }
    else {
      resolved.r = new std_msgs.msg.Float64()
    }

    if (msg.acc !== undefined) {
      resolved.acc = std_msgs.msg.Float64.Resolve(msg.acc)
    }
    else {
      resolved.acc = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = TrajectoryPoint;
