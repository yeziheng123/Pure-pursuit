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

//-----------------------------------------------------------

class ControlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle = null;
      this.steering_angle = null;
      this.racing_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('racing_status')) {
        this.racing_status = initObj.racing_status
      }
      else {
        this.racing_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.throttle, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [racing_status]
    bufferOffset = _serializer.uint8(obj.racing_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlCommand
    let len;
    let data = new ControlCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [racing_status]
    data.racing_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsd_common_msgs/ControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d97314d657212df7db4989e87675619';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header                                                 #这个是控制命令
    
    std_msgs/Float32 throttle        # Throttle value between [-1, 1]                           油门  越多油门越大  范围在【-1，1】
    std_msgs/Float32 steering_angle  # Steering angle value between [-1, 1], where left < 0, right > 0                 转角值 左小于0 右大于0
    uint8 racing_status   #车辆最终状态 告诉车辆我是否完赛
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
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = std_msgs.msg.Float32.Resolve(msg.throttle)
    }
    else {
      resolved.throttle = new std_msgs.msg.Float32()
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = std_msgs.msg.Float32.Resolve(msg.steering_angle)
    }
    else {
      resolved.steering_angle = new std_msgs.msg.Float32()
    }

    if (msg.racing_status !== undefined) {
      resolved.racing_status = msg.racing_status;
    }
    else {
      resolved.racing_status = 0
    }

    return resolved;
    }
};

module.exports = ControlCommand;
