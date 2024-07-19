// Auto-generated. Do not edit!

// (in-package whole_body_state_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CentroidalState = require('./CentroidalState.js');
let JointState = require('./JointState.js');
let ContactState = require('./ContactState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WholeBodyState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.centroidal = null;
      this.joints = null;
      this.contacts = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('centroidal')) {
        this.centroidal = initObj.centroidal
      }
      else {
        this.centroidal = new CentroidalState();
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('contacts')) {
        this.contacts = initObj.contacts
      }
      else {
        this.contacts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WholeBodyState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [centroidal]
    bufferOffset = CentroidalState.serialize(obj.centroidal, buffer, bufferOffset);
    // Serialize message field [joints]
    // Serialize the length for message field [joints]
    bufferOffset = _serializer.uint32(obj.joints.length, buffer, bufferOffset);
    obj.joints.forEach((val) => {
      bufferOffset = JointState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contacts]
    // Serialize the length for message field [contacts]
    bufferOffset = _serializer.uint32(obj.contacts.length, buffer, bufferOffset);
    obj.contacts.forEach((val) => {
      bufferOffset = ContactState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WholeBodyState
    let len;
    let data = new WholeBodyState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [centroidal]
    data.centroidal = CentroidalState.deserialize(buffer, bufferOffset);
    // Deserialize message field [joints]
    // Deserialize array length for message field [joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints[i] = JointState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contacts]
    // Deserialize array length for message field [contacts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contacts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contacts[i] = ContactState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.joints.forEach((val) => {
      length += JointState.getMessageSize(val);
    });
    object.contacts.forEach((val) => {
      length += ContactState.getMessageSize(val);
    });
    return length + 216;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whole_body_state_msgs/WholeBodyState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '094da535c1076730e6ed16a0acd60d71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes the whole-body state of rigid body system.
    #
    # A whole-body state is defined by the centroidal, joints and contact states.
    # The description of every element is defined in their respective
    # messages. This state is described in respective time.
    #
    # The centroidal state describes
    #  * the position, velocity and acceleration of the CoM,
    #  * the base orientation and angular velocity, and
    #  * the linear and angular momentum and their rates.
    #
    # The joint states describes:
    #  * the joint name
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s),
    #  * the effort that is applied in the joint (Nm or N).
    # The contact state describes
    #  * the frame name
    #  * the pose of the contact,
    #  * the velocity of the contact, and
    #  * the wrench of the contact
    # The header specifies the time at which the state is published.
    
    
    std_msgs/Header header
    
    # This represent the time state
    float64 time
    
    # This represents the base state (CoM motion, angular motion and centroidal momenta)
    whole_body_state_msgs/CentroidalState centroidal
    
    # This represents the joint state (position, velocity, acceleration and effort)
    whole_body_state_msgs/JointState[] joints
    
    # This represents the end-effector state (cartesian position and contact forces)
    whole_body_state_msgs/ContactState[] contacts
    
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
    MSG: whole_body_state_msgs/CentroidalState
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
    
    ================================================================================
    MSG: whole_body_state_msgs/JointState
    # This message describes the state of an actuated joints.
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the joint name
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s),
    #  * the acceleration of the joint (rad/s^2 or m/s^2), and
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    
    
    # Name of the joint
    string name
    
    # States of the joint
    float64 position
    float64 velocity
    float64 acceleration
    float64 effort
    
    ================================================================================
    MSG: whole_body_state_msgs/ContactState
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
    const resolved = new WholeBodyState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.centroidal !== undefined) {
      resolved.centroidal = CentroidalState.Resolve(msg.centroidal)
    }
    else {
      resolved.centroidal = new CentroidalState()
    }

    if (msg.joints !== undefined) {
      resolved.joints = new Array(msg.joints.length);
      for (let i = 0; i < resolved.joints.length; ++i) {
        resolved.joints[i] = JointState.Resolve(msg.joints[i]);
      }
    }
    else {
      resolved.joints = []
    }

    if (msg.contacts !== undefined) {
      resolved.contacts = new Array(msg.contacts.length);
      for (let i = 0; i < resolved.contacts.length; ++i) {
        resolved.contacts[i] = ContactState.Resolve(msg.contacts[i]);
      }
    }
    else {
      resolved.contacts = []
    }

    return resolved;
    }
};

module.exports = WholeBodyState;
