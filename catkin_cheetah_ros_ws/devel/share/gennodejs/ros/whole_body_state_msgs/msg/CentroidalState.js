// Auto-generated. Do not edit!

// (in-package whole_body_state_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CentroidalState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.com_position = null;
      this.com_velocity = null;
      this.base_orientation = null;
      this.base_angular_velocity = null;
      this.momenta = null;
      this.momenta_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('com_position')) {
        this.com_position = initObj.com_position
      }
      else {
        this.com_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('com_velocity')) {
        this.com_velocity = initObj.com_velocity
      }
      else {
        this.com_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('base_orientation')) {
        this.base_orientation = initObj.base_orientation
      }
      else {
        this.base_orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('base_angular_velocity')) {
        this.base_angular_velocity = initObj.base_angular_velocity
      }
      else {
        this.base_angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('momenta')) {
        this.momenta = initObj.momenta
      }
      else {
        this.momenta = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('momenta_rate')) {
        this.momenta_rate = initObj.momenta_rate
      }
      else {
        this.momenta_rate = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CentroidalState
    // Serialize message field [com_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.com_position, buffer, bufferOffset);
    // Serialize message field [com_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.com_velocity, buffer, bufferOffset);
    // Serialize message field [base_orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.base_orientation, buffer, bufferOffset);
    // Serialize message field [base_angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.base_angular_velocity, buffer, bufferOffset);
    // Serialize message field [momenta]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.momenta, buffer, bufferOffset);
    // Serialize message field [momenta_rate]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.momenta_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CentroidalState
    let len;
    let data = new CentroidalState(null);
    // Deserialize message field [com_position]
    data.com_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [com_velocity]
    data.com_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_orientation]
    data.base_orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_angular_velocity]
    data.base_angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [momenta]
    data.momenta = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [momenta_rate]
    data.momenta_rate = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 200;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whole_body_state_msgs/CentroidalState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23ae41306b44b6e3e1e14f56a5849ac7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes the states of a centroidal state.
    #
    # The centroidal state is defined by:
    #  * the position, velocity and acceleration of the CoM,
    #  * the base orientation and angular velocity, and
    #  * the linear and angular momentum and their rates.
    # where each quantity is expressed in the world frame.
    
    # Center of mass
    geometry_msgs/Vector3 com_position
    geometry_msgs/Vector3 com_velocity
    
    # Base orientation
    geometry_msgs/Quaternion base_orientation
    geometry_msgs/Vector3 base_angular_velocity
    
    # Linear and angular momentum
    geometry_msgs/Twist momenta
    geometry_msgs/Twist momenta_rate
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CentroidalState(null);
    if (msg.com_position !== undefined) {
      resolved.com_position = geometry_msgs.msg.Vector3.Resolve(msg.com_position)
    }
    else {
      resolved.com_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.com_velocity !== undefined) {
      resolved.com_velocity = geometry_msgs.msg.Vector3.Resolve(msg.com_velocity)
    }
    else {
      resolved.com_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.base_orientation !== undefined) {
      resolved.base_orientation = geometry_msgs.msg.Quaternion.Resolve(msg.base_orientation)
    }
    else {
      resolved.base_orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.base_angular_velocity !== undefined) {
      resolved.base_angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.base_angular_velocity)
    }
    else {
      resolved.base_angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.momenta !== undefined) {
      resolved.momenta = geometry_msgs.msg.Twist.Resolve(msg.momenta)
    }
    else {
      resolved.momenta = new geometry_msgs.msg.Twist()
    }

    if (msg.momenta_rate !== undefined) {
      resolved.momenta_rate = geometry_msgs.msg.Twist.Resolve(msg.momenta_rate)
    }
    else {
      resolved.momenta_rate = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = CentroidalState;
