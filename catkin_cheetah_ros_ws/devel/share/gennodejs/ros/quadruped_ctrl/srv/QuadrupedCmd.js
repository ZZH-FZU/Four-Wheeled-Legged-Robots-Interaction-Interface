// Auto-generated. Do not edit!

// (in-package quadruped_ctrl.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class QuadrupedCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadrupedCmdRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int16(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadrupedCmdRequest
    let len;
    let data = new QuadrupedCmdRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quadruped_ctrl/QuadrupedCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e12b32aac6266778a9aa3b101cf7c33e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuadrupedCmdRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    return resolved;
    }
};

class QuadrupedCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.description = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadrupedCmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int16(obj.result, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadrupedCmdResponse
    let len;
    let data = new QuadrupedCmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.description);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quadruped_ctrl/QuadrupedCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '124eeb8e12f7acaa56b57d9a3c86ff45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 result				#0:success, -1:false
    string description   #relative description
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuadrupedCmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: QuadrupedCmdRequest,
  Response: QuadrupedCmdResponse,
  md5sum() { return 'f5d998487ff22f19faff84885516d9ae'; },
  datatype() { return 'quadruped_ctrl/QuadrupedCmd'; }
};
