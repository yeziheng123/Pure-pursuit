// Auto-generated. Do not edit!

// (in-package fsd_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CarStateDt = require('./CarStateDt.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CarState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.car_state = null;
      this.car_state_dt = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('car_state')) {
        this.car_state = initObj.car_state
      }
      else {
        this.car_state = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('car_state_dt')) {
        this.car_state_dt = initObj.car_state_dt
      }
      else {
        this.car_state_dt = new CarStateDt();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [car_state]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.car_state, buffer, bufferOffset);
    // Serialize message field [car_state_dt]
    bufferOffset = CarStateDt.serialize(obj.car_state_dt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarState
    let len;
    let data = new CarState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [car_state]
    data.car_state = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [car_state_dt]
    data.car_state_dt = CarStateDt.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += CarStateDt.getMessageSize(object.car_state_dt);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsd_common_msgs/CarState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '485b164b70a3bc9c13533c34f664820c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header                          #标准消息包std_msgs
    
    geometry_msgs/Pose2D car_state    			# Position in x, y, theta      在x，y的位置 角度            2D上面的位置和方向
    fsd_common_msgs/CarStateDt car_state_dt		# Velocities   速度
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: fsd_common_msgs/CarStateDt
    std_msgs/Header header
    
    geometry_msgs/Pose2D car_state_dt   # Velocity in x, y, theta                      x y方向上的速度  角度
    geometry_msgs/Pose2D car_state_a   # Acceleration in x, y, theta               x y方向上的加速度 角度
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.car_state !== undefined) {
      resolved.car_state = geometry_msgs.msg.Pose2D.Resolve(msg.car_state)
    }
    else {
      resolved.car_state = new geometry_msgs.msg.Pose2D()
    }

    if (msg.car_state_dt !== undefined) {
      resolved.car_state_dt = CarStateDt.Resolve(msg.car_state_dt)
    }
    else {
      resolved.car_state_dt = new CarStateDt()
    }

    return resolved;
    }
};

module.exports = CarState;
