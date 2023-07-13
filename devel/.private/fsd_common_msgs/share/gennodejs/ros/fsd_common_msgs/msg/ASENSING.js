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

class ASENSING {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.north_velocity = null;
      this.east_velocity = null;
      this.ground_velocity = null;
      this.roll = null;
      this.pitch = null;
      this.azimuth = null;
      this.x_angular_velocity = null;
      this.y_angular_velocity = null;
      this.z_angular_velocity = null;
      this.x_acc = null;
      this.y_acc = null;
      this.z_acc = null;
      this.latitude_std = null;
      this.longitude_std = null;
      this.altitude_std = null;
      this.north_velocity_std = null;
      this.east_velocity_std = null;
      this.ground_velocity_std = null;
      this.roll_std = null;
      this.pitch_std = null;
      this.azimuth_std = null;
      this.ins_status = null;
      this.position_type = null;
      this.sec_of_week = null;
      this.gps_week_number = null;
      this.temperature = null;
      this.wheel_speed_status = null;
      this.heading_type = null;
      this.numsv = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('north_velocity')) {
        this.north_velocity = initObj.north_velocity
      }
      else {
        this.north_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('east_velocity')) {
        this.east_velocity = initObj.east_velocity
      }
      else {
        this.east_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('ground_velocity')) {
        this.ground_velocity = initObj.ground_velocity
      }
      else {
        this.ground_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('x_angular_velocity')) {
        this.x_angular_velocity = initObj.x_angular_velocity
      }
      else {
        this.x_angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('y_angular_velocity')) {
        this.y_angular_velocity = initObj.y_angular_velocity
      }
      else {
        this.y_angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('z_angular_velocity')) {
        this.z_angular_velocity = initObj.z_angular_velocity
      }
      else {
        this.z_angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('x_acc')) {
        this.x_acc = initObj.x_acc
      }
      else {
        this.x_acc = 0.0;
      }
      if (initObj.hasOwnProperty('y_acc')) {
        this.y_acc = initObj.y_acc
      }
      else {
        this.y_acc = 0.0;
      }
      if (initObj.hasOwnProperty('z_acc')) {
        this.z_acc = initObj.z_acc
      }
      else {
        this.z_acc = 0.0;
      }
      if (initObj.hasOwnProperty('latitude_std')) {
        this.latitude_std = initObj.latitude_std
      }
      else {
        this.latitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_std')) {
        this.longitude_std = initObj.longitude_std
      }
      else {
        this.longitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_std')) {
        this.altitude_std = initObj.altitude_std
      }
      else {
        this.altitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('north_velocity_std')) {
        this.north_velocity_std = initObj.north_velocity_std
      }
      else {
        this.north_velocity_std = 0.0;
      }
      if (initObj.hasOwnProperty('east_velocity_std')) {
        this.east_velocity_std = initObj.east_velocity_std
      }
      else {
        this.east_velocity_std = 0.0;
      }
      if (initObj.hasOwnProperty('ground_velocity_std')) {
        this.ground_velocity_std = initObj.ground_velocity_std
      }
      else {
        this.ground_velocity_std = 0.0;
      }
      if (initObj.hasOwnProperty('roll_std')) {
        this.roll_std = initObj.roll_std
      }
      else {
        this.roll_std = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_std')) {
        this.pitch_std = initObj.pitch_std
      }
      else {
        this.pitch_std = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth_std')) {
        this.azimuth_std = initObj.azimuth_std
      }
      else {
        this.azimuth_std = 0.0;
      }
      if (initObj.hasOwnProperty('ins_status')) {
        this.ins_status = initObj.ins_status
      }
      else {
        this.ins_status = 0;
      }
      if (initObj.hasOwnProperty('position_type')) {
        this.position_type = initObj.position_type
      }
      else {
        this.position_type = 0;
      }
      if (initObj.hasOwnProperty('sec_of_week')) {
        this.sec_of_week = initObj.sec_of_week
      }
      else {
        this.sec_of_week = 0.0;
      }
      if (initObj.hasOwnProperty('gps_week_number')) {
        this.gps_week_number = initObj.gps_week_number
      }
      else {
        this.gps_week_number = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_status')) {
        this.wheel_speed_status = initObj.wheel_speed_status
      }
      else {
        this.wheel_speed_status = 0;
      }
      if (initObj.hasOwnProperty('heading_type')) {
        this.heading_type = initObj.heading_type
      }
      else {
        this.heading_type = 0;
      }
      if (initObj.hasOwnProperty('numsv')) {
        this.numsv = initObj.numsv
      }
      else {
        this.numsv = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASENSING
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [north_velocity]
    bufferOffset = _serializer.float64(obj.north_velocity, buffer, bufferOffset);
    // Serialize message field [east_velocity]
    bufferOffset = _serializer.float64(obj.east_velocity, buffer, bufferOffset);
    // Serialize message field [ground_velocity]
    bufferOffset = _serializer.float64(obj.ground_velocity, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float64(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [x_angular_velocity]
    bufferOffset = _serializer.float64(obj.x_angular_velocity, buffer, bufferOffset);
    // Serialize message field [y_angular_velocity]
    bufferOffset = _serializer.float64(obj.y_angular_velocity, buffer, bufferOffset);
    // Serialize message field [z_angular_velocity]
    bufferOffset = _serializer.float64(obj.z_angular_velocity, buffer, bufferOffset);
    // Serialize message field [x_acc]
    bufferOffset = _serializer.float64(obj.x_acc, buffer, bufferOffset);
    // Serialize message field [y_acc]
    bufferOffset = _serializer.float64(obj.y_acc, buffer, bufferOffset);
    // Serialize message field [z_acc]
    bufferOffset = _serializer.float64(obj.z_acc, buffer, bufferOffset);
    // Serialize message field [latitude_std]
    bufferOffset = _serializer.float32(obj.latitude_std, buffer, bufferOffset);
    // Serialize message field [longitude_std]
    bufferOffset = _serializer.float32(obj.longitude_std, buffer, bufferOffset);
    // Serialize message field [altitude_std]
    bufferOffset = _serializer.float32(obj.altitude_std, buffer, bufferOffset);
    // Serialize message field [north_velocity_std]
    bufferOffset = _serializer.float32(obj.north_velocity_std, buffer, bufferOffset);
    // Serialize message field [east_velocity_std]
    bufferOffset = _serializer.float32(obj.east_velocity_std, buffer, bufferOffset);
    // Serialize message field [ground_velocity_std]
    bufferOffset = _serializer.float32(obj.ground_velocity_std, buffer, bufferOffset);
    // Serialize message field [roll_std]
    bufferOffset = _serializer.float32(obj.roll_std, buffer, bufferOffset);
    // Serialize message field [pitch_std]
    bufferOffset = _serializer.float32(obj.pitch_std, buffer, bufferOffset);
    // Serialize message field [azimuth_std]
    bufferOffset = _serializer.float32(obj.azimuth_std, buffer, bufferOffset);
    // Serialize message field [ins_status]
    bufferOffset = _serializer.uint32(obj.ins_status, buffer, bufferOffset);
    // Serialize message field [position_type]
    bufferOffset = _serializer.uint32(obj.position_type, buffer, bufferOffset);
    // Serialize message field [sec_of_week]
    bufferOffset = _serializer.float64(obj.sec_of_week, buffer, bufferOffset);
    // Serialize message field [gps_week_number]
    bufferOffset = _serializer.float64(obj.gps_week_number, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [wheel_speed_status]
    bufferOffset = _serializer.uint32(obj.wheel_speed_status, buffer, bufferOffset);
    // Serialize message field [heading_type]
    bufferOffset = _serializer.uint32(obj.heading_type, buffer, bufferOffset);
    // Serialize message field [numsv]
    bufferOffset = _serializer.uint32(obj.numsv, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASENSING
    let len;
    let data = new ASENSING(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [north_velocity]
    data.north_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east_velocity]
    data.east_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ground_velocity]
    data.ground_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_angular_velocity]
    data.x_angular_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_angular_velocity]
    data.y_angular_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_angular_velocity]
    data.z_angular_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_acc]
    data.x_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_acc]
    data.y_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_acc]
    data.z_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_std]
    data.latitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_std]
    data.longitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_std]
    data.altitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [north_velocity_std]
    data.north_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [east_velocity_std]
    data.east_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ground_velocity_std]
    data.ground_velocity_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_std]
    data.roll_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_std]
    data.pitch_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth_std]
    data.azimuth_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ins_status]
    data.ins_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position_type]
    data.position_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sec_of_week]
    data.sec_of_week = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_week_number]
    data.gps_week_number = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_status]
    data.wheel_speed_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [heading_type]
    data.heading_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [numsv]
    data.numsv = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 196;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsd_common_msgs/ASENSING';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71cc4b05e9f3e6f366c4fb6f4c0ec4ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASENSING(null);
    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.north_velocity !== undefined) {
      resolved.north_velocity = msg.north_velocity;
    }
    else {
      resolved.north_velocity = 0.0
    }

    if (msg.east_velocity !== undefined) {
      resolved.east_velocity = msg.east_velocity;
    }
    else {
      resolved.east_velocity = 0.0
    }

    if (msg.ground_velocity !== undefined) {
      resolved.ground_velocity = msg.ground_velocity;
    }
    else {
      resolved.ground_velocity = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.x_angular_velocity !== undefined) {
      resolved.x_angular_velocity = msg.x_angular_velocity;
    }
    else {
      resolved.x_angular_velocity = 0.0
    }

    if (msg.y_angular_velocity !== undefined) {
      resolved.y_angular_velocity = msg.y_angular_velocity;
    }
    else {
      resolved.y_angular_velocity = 0.0
    }

    if (msg.z_angular_velocity !== undefined) {
      resolved.z_angular_velocity = msg.z_angular_velocity;
    }
    else {
      resolved.z_angular_velocity = 0.0
    }

    if (msg.x_acc !== undefined) {
      resolved.x_acc = msg.x_acc;
    }
    else {
      resolved.x_acc = 0.0
    }

    if (msg.y_acc !== undefined) {
      resolved.y_acc = msg.y_acc;
    }
    else {
      resolved.y_acc = 0.0
    }

    if (msg.z_acc !== undefined) {
      resolved.z_acc = msg.z_acc;
    }
    else {
      resolved.z_acc = 0.0
    }

    if (msg.latitude_std !== undefined) {
      resolved.latitude_std = msg.latitude_std;
    }
    else {
      resolved.latitude_std = 0.0
    }

    if (msg.longitude_std !== undefined) {
      resolved.longitude_std = msg.longitude_std;
    }
    else {
      resolved.longitude_std = 0.0
    }

    if (msg.altitude_std !== undefined) {
      resolved.altitude_std = msg.altitude_std;
    }
    else {
      resolved.altitude_std = 0.0
    }

    if (msg.north_velocity_std !== undefined) {
      resolved.north_velocity_std = msg.north_velocity_std;
    }
    else {
      resolved.north_velocity_std = 0.0
    }

    if (msg.east_velocity_std !== undefined) {
      resolved.east_velocity_std = msg.east_velocity_std;
    }
    else {
      resolved.east_velocity_std = 0.0
    }

    if (msg.ground_velocity_std !== undefined) {
      resolved.ground_velocity_std = msg.ground_velocity_std;
    }
    else {
      resolved.ground_velocity_std = 0.0
    }

    if (msg.roll_std !== undefined) {
      resolved.roll_std = msg.roll_std;
    }
    else {
      resolved.roll_std = 0.0
    }

    if (msg.pitch_std !== undefined) {
      resolved.pitch_std = msg.pitch_std;
    }
    else {
      resolved.pitch_std = 0.0
    }

    if (msg.azimuth_std !== undefined) {
      resolved.azimuth_std = msg.azimuth_std;
    }
    else {
      resolved.azimuth_std = 0.0
    }

    if (msg.ins_status !== undefined) {
      resolved.ins_status = msg.ins_status;
    }
    else {
      resolved.ins_status = 0
    }

    if (msg.position_type !== undefined) {
      resolved.position_type = msg.position_type;
    }
    else {
      resolved.position_type = 0
    }

    if (msg.sec_of_week !== undefined) {
      resolved.sec_of_week = msg.sec_of_week;
    }
    else {
      resolved.sec_of_week = 0.0
    }

    if (msg.gps_week_number !== undefined) {
      resolved.gps_week_number = msg.gps_week_number;
    }
    else {
      resolved.gps_week_number = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.wheel_speed_status !== undefined) {
      resolved.wheel_speed_status = msg.wheel_speed_status;
    }
    else {
      resolved.wheel_speed_status = 0
    }

    if (msg.heading_type !== undefined) {
      resolved.heading_type = msg.heading_type;
    }
    else {
      resolved.heading_type = 0
    }

    if (msg.numsv !== undefined) {
      resolved.numsv = msg.numsv;
    }
    else {
      resolved.numsv = 0
    }

    return resolved;
    }
};

module.exports = ASENSING;
