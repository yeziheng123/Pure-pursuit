// Auto-generated. Do not edit!

// (in-package fsd_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehcileCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head1 = null;
      this.head2 = null;
      this.length = null;
      this.steering = null;
      this.brake_force = null;
      this.pedal_ratio = null;
      this.gear_position = null;
      this.working_mode = null;
      this.racing_num = null;
      this.racing_status = null;
      this.checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('head1')) {
        this.head1 = initObj.head1
      }
      else {
        this.head1 = 0;
      }
      if (initObj.hasOwnProperty('head2')) {
        this.head2 = initObj.head2
      }
      else {
        this.head2 = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0;
      }
      if (initObj.hasOwnProperty('brake_force')) {
        this.brake_force = initObj.brake_force
      }
      else {
        this.brake_force = 0;
      }
      if (initObj.hasOwnProperty('pedal_ratio')) {
        this.pedal_ratio = initObj.pedal_ratio
      }
      else {
        this.pedal_ratio = 0;
      }
      if (initObj.hasOwnProperty('gear_position')) {
        this.gear_position = initObj.gear_position
      }
      else {
        this.gear_position = 0;
      }
      if (initObj.hasOwnProperty('working_mode')) {
        this.working_mode = initObj.working_mode
      }
      else {
        this.working_mode = 0;
      }
      if (initObj.hasOwnProperty('racing_num')) {
        this.racing_num = initObj.racing_num
      }
      else {
        this.racing_num = 0;
      }
      if (initObj.hasOwnProperty('racing_status')) {
        this.racing_status = initObj.racing_status
      }
      else {
        this.racing_status = 0;
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehcileCmd
    // Serialize message field [head1]
    bufferOffset = _serializer.uint8(obj.head1, buffer, bufferOffset);
    // Serialize message field [head2]
    bufferOffset = _serializer.uint8(obj.head2, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.uint8(obj.steering, buffer, bufferOffset);
    // Serialize message field [brake_force]
    bufferOffset = _serializer.uint8(obj.brake_force, buffer, bufferOffset);
    // Serialize message field [pedal_ratio]
    bufferOffset = _serializer.uint8(obj.pedal_ratio, buffer, bufferOffset);
    // Serialize message field [gear_position]
    bufferOffset = _serializer.uint8(obj.gear_position, buffer, bufferOffset);
    // Serialize message field [working_mode]
    bufferOffset = _serializer.uint8(obj.working_mode, buffer, bufferOffset);
    // Serialize message field [racing_num]
    bufferOffset = _serializer.uint8(obj.racing_num, buffer, bufferOffset);
    // Serialize message field [racing_status]
    bufferOffset = _serializer.uint8(obj.racing_status, buffer, bufferOffset);
    // Serialize message field [checksum]
    bufferOffset = _serializer.uint16(obj.checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehcileCmd
    let len;
    let data = new VehcileCmd(null);
    // Deserialize message field [head1]
    data.head1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [head2]
    data.head2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_force]
    data.brake_force = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pedal_ratio]
    data.pedal_ratio = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_position]
    data.gear_position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [working_mode]
    data.working_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [racing_num]
    data.racing_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [racing_status]
    data.racing_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checksum]
    data.checksum = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsd_common_msgs/VehcileCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f174333528b91e4bd29b231b98ffd01e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 head1
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehcileCmd(null);
    if (msg.head1 !== undefined) {
      resolved.head1 = msg.head1;
    }
    else {
      resolved.head1 = 0
    }

    if (msg.head2 !== undefined) {
      resolved.head2 = msg.head2;
    }
    else {
      resolved.head2 = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0
    }

    if (msg.brake_force !== undefined) {
      resolved.brake_force = msg.brake_force;
    }
    else {
      resolved.brake_force = 0
    }

    if (msg.pedal_ratio !== undefined) {
      resolved.pedal_ratio = msg.pedal_ratio;
    }
    else {
      resolved.pedal_ratio = 0
    }

    if (msg.gear_position !== undefined) {
      resolved.gear_position = msg.gear_position;
    }
    else {
      resolved.gear_position = 0
    }

    if (msg.working_mode !== undefined) {
      resolved.working_mode = msg.working_mode;
    }
    else {
      resolved.working_mode = 0
    }

    if (msg.racing_num !== undefined) {
      resolved.racing_num = msg.racing_num;
    }
    else {
      resolved.racing_num = 0
    }

    if (msg.racing_status !== undefined) {
      resolved.racing_status = msg.racing_status;
    }
    else {
      resolved.racing_status = 0
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    return resolved;
    }
};

module.exports = VehcileCmd;
