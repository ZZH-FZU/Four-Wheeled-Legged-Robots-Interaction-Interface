// Auto-generated. Do not edit!

// (in-package quadruped_ctrl.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class commandDes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.com_position = null;
      this.com_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('com_position')) {
        this.com_position = initObj.com_position
      }
      else {
        this.com_position = [];
      }
      if (initObj.hasOwnProperty('com_velocity')) {
        this.com_velocity = initObj.com_velocity
      }
      else {
        this.com_velocity = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type commandDes
    // Serialize message field [com_position]
    bufferOffset = _arraySerializer.float64(obj.com_position, buffer, bufferOffset, null);
    // Serialize message field [com_velocity]
    bufferOffset = _arraySerializer.float64(obj.com_velocity, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type commandDes
    let len;
    let data = new commandDes(null);
    // Deserialize message field [com_position]
    data.com_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [com_velocity]
    data.com_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.com_position.length;
    length += 8 * object.com_velocity.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadruped_ctrl/commandDes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c18e8a9edeafcfe5e0c5df4db6c81c60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] com_position
    float64[] com_velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new commandDes(null);
    if (msg.com_position !== undefined) {
      resolved.com_position = msg.com_position;
    }
    else {
      resolved.com_position = []
    }

    if (msg.com_velocity !== undefined) {
      resolved.com_velocity = msg.com_velocity;
    }
    else {
      resolved.com_velocity = []
    }

    return resolved;
    }
};

module.exports = commandDes;
