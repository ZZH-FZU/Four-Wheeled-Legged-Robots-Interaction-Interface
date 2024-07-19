// Auto-generated. Do not edit!

// (in-package whole_body_state_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.total = null;
      this.feedforward = null;
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('total')) {
        this.total = initObj.total
      }
      else {
        this.total = 0.0;
      }
      if (initObj.hasOwnProperty('feedforward')) {
        this.feedforward = initObj.feedforward
      }
      else {
        this.feedforward = 0.0;
      }
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCommand
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [total]
    bufferOffset = _serializer.float64(obj.total, buffer, bufferOffset);
    // Serialize message field [feedforward]
    bufferOffset = _serializer.float64(obj.feedforward, buffer, bufferOffset);
    // Serialize message field [feedback]
    bufferOffset = _serializer.float64(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCommand
    let len;
    let data = new JointCommand(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [total]
    data.total = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feedforward]
    data.feedforward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whole_body_state_msgs/JointCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b9bd29f162ce43dcd78df2226b6f95d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes the state of joint command.
    #
    # The state of each command (revolute or prismatic) is defined by:
    #  * the total command to the joint (Nm or N),
    #  * the feedforward command component (Nm or N), and
    #  * the feedback command component (Nm or N)
    #
    # Each commanded joint is uniquely identified by its name
    
    
    string name
    float64 total
    float64 feedforward
    float64 feedback
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCommand(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.total !== undefined) {
      resolved.total = msg.total;
    }
    else {
      resolved.total = 0.0
    }

    if (msg.feedforward !== undefined) {
      resolved.feedforward = msg.feedforward;
    }
    else {
      resolved.feedforward = 0.0
    }

    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = 0.0
    }

    return resolved;
    }
};

module.exports = JointCommand;
