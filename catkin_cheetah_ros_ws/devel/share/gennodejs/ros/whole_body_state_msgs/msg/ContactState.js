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

class ContactState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.status = null;
      this.pose = null;
      this.velocity = null;
      this.wrench = null;
      this.surface_normal = null;
      this.friction_coefficient = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('wrench')) {
        this.wrench = initObj.wrench
      }
      else {
        this.wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('surface_normal')) {
        this.surface_normal = initObj.surface_normal
      }
      else {
        this.surface_normal = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('friction_coefficient')) {
        this.friction_coefficient = initObj.friction_coefficient
      }
      else {
        this.friction_coefficient = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContactState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.wrench, buffer, bufferOffset);
    // Serialize message field [surface_normal]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.surface_normal, buffer, bufferOffset);
    // Serialize message field [friction_coefficient]
    bufferOffset = _serializer.float64(obj.friction_coefficient, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContactState
    let len;
    let data = new ContactState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [wrench]
    data.wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [surface_normal]
    data.surface_normal = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [friction_coefficient]
    data.friction_coefficient = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 190;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whole_body_state_msgs/ContactState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b5fad21fd4b53083962e646c448a552';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes the state of contact or end-effector body.
    #
    # The contact state is expressed in the world frame. A contact state is
    # defined by:
    #  * type of contact
    #  * status of the contact
    #  * the frame name
    #  * the pose of the contact,
    #  * the velocity of the contact,
    #  * the wrench of the contact
    #  * the normal vector that defines the surface
    #  * the friction coefficient of the surface
    #  * its classified state, if available
    
    # Type of contact identifiers
    uint8 LOCOMOTION   = 0
    uint8 MANIPULATION = 1
    
    # Type of contact states
    uint8 UNKNOWN  = 0  # 0 because it's the default for int8
    uint8 INACTIVE = 1
    uint8 ACTIVE   = 2
    uint8 SLIPPING = 3
    
    # Name of the contact body
    string name
    
    # Type of contact
    uint8 type
    
    # Contact status (e.g. from a contact state estimator)
    uint8 status
    
    # State of the contact body
    geometry_msgs/Pose pose
    geometry_msgs/Twist velocity
    geometry_msgs/Wrench wrench
    geometry_msgs/Vector3 surface_normal
    float64 friction_coefficient
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContactState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.wrench !== undefined) {
      resolved.wrench = geometry_msgs.msg.Wrench.Resolve(msg.wrench)
    }
    else {
      resolved.wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.surface_normal !== undefined) {
      resolved.surface_normal = geometry_msgs.msg.Vector3.Resolve(msg.surface_normal)
    }
    else {
      resolved.surface_normal = new geometry_msgs.msg.Vector3()
    }

    if (msg.friction_coefficient !== undefined) {
      resolved.friction_coefficient = msg.friction_coefficient;
    }
    else {
      resolved.friction_coefficient = 0.0
    }

    return resolved;
    }
};

// Constants for message
ContactState.Constants = {
  LOCOMOTION: 0,
  MANIPULATION: 1,
  UNKNOWN: 0,
  INACTIVE: 1,
  ACTIVE: 2,
  SLIPPING: 3,
}

module.exports = ContactState;
