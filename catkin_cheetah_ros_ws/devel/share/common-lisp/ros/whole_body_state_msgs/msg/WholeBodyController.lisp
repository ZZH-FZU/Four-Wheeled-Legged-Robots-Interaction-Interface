; Auto-generated. Do not edit!


(cl:in-package whole_body_state_msgs-msg)


;//! \htmlinclude WholeBodyController.msg.html

(cl:defclass <WholeBodyController> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (desired
    :reader desired
    :initarg :desired
    :type whole_body_state_msgs-msg:WholeBodyState
    :initform (cl:make-instance 'whole_body_state_msgs-msg:WholeBodyState))
   (actual
    :reader actual
    :initarg :actual
    :type whole_body_state_msgs-msg:WholeBodyState
    :initform (cl:make-instance 'whole_body_state_msgs-msg:WholeBodyState))
   (error
    :reader error
    :initarg :error
    :type whole_body_state_msgs-msg:WholeBodyState
    :initform (cl:make-instance 'whole_body_state_msgs-msg:WholeBodyState))
   (command
    :reader command
    :initarg :command
    :type (cl:vector whole_body_state_msgs-msg:JointCommand)
   :initform (cl:make-array 0 :element-type 'whole_body_state_msgs-msg:JointCommand :initial-element (cl:make-instance 'whole_body_state_msgs-msg:JointCommand))))
)

(cl:defclass WholeBodyController (<WholeBodyController>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WholeBodyController>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WholeBodyController)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whole_body_state_msgs-msg:<WholeBodyController> is deprecated: use whole_body_state_msgs-msg:WholeBodyController instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WholeBodyController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:header-val is deprecated.  Use whole_body_state_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'desired-val :lambda-list '(m))
(cl:defmethod desired-val ((m <WholeBodyController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:desired-val is deprecated.  Use whole_body_state_msgs-msg:desired instead.")
  (desired m))

(cl:ensure-generic-function 'actual-val :lambda-list '(m))
(cl:defmethod actual-val ((m <WholeBodyController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:actual-val is deprecated.  Use whole_body_state_msgs-msg:actual instead.")
  (actual m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <WholeBodyController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:error-val is deprecated.  Use whole_body_state_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <WholeBodyController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:command-val is deprecated.  Use whole_body_state_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WholeBodyController>) ostream)
  "Serializes a message object of type '<WholeBodyController>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WholeBodyController>) istream)
  "Deserializes a message object of type '<WholeBodyController>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'command) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'command)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'whole_body_state_msgs-msg:JointCommand))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WholeBodyController>)))
  "Returns string type for a message object of type '<WholeBodyController>"
  "whole_body_state_msgs/WholeBodyController")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WholeBodyController)))
  "Returns string type for a message object of type 'WholeBodyController"
  "whole_body_state_msgs/WholeBodyController")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WholeBodyController>)))
  "Returns md5sum for a message object of type '<WholeBodyController>"
  "9d7e81de51b0c42689581611cacdaaec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WholeBodyController)))
  "Returns md5sum for a message object of type 'WholeBodyController"
  "9d7e81de51b0c42689581611cacdaaec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WholeBodyController>)))
  "Returns full string definition for message of type '<WholeBodyController>"
  (cl:format cl:nil "# This message describes the whole-body state of controller.~%#~%# A whole-body controller state is defined by the desired, actual, and~%# error of the whole-body state of the system. The description of~%# every element is defined in their respective messages.~%#~%# The header specifies the time at which the trajectory is published.~%~%~%std_msgs/Header header~%~%# Desired whole-body state~%whole_body_state_msgs/WholeBodyState desired~%~%# Actual whole-body state~%whole_body_state_msgs/WholeBodyState actual~%~%# Error whole-body state~%whole_body_state_msgs/WholeBodyState error~%~%# Command state~%whole_body_state_msgs/JointCommand[] command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: whole_body_state_msgs/WholeBodyState~%# This message describes the whole-body state of rigid body system.~%#~%# A whole-body state is defined by the centroidal, joints and contact states.~%# The description of every element is defined in their respective~%# messages. This state is described in respective time.~%#~%# The centroidal state describes~%#  * the position, velocity and acceleration of the CoM,~%#  * the base orientation and angular velocity, and~%#  * the linear and angular momentum and their rates.~%#~%# The joint states describes:~%#  * the joint name~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s),~%#  * the effort that is applied in the joint (Nm or N).~%# The contact state describes~%#  * the frame name~%#  * the pose of the contact,~%#  * the velocity of the contact, and~%#  * the wrench of the contact~%# The header specifies the time at which the state is published.~%~%~%std_msgs/Header header~%~%# This represent the time state~%float64 time~%~%# This represents the base state (CoM motion, angular motion and centroidal momenta)~%whole_body_state_msgs/CentroidalState centroidal~%~%# This represents the joint state (position, velocity, acceleration and effort)~%whole_body_state_msgs/JointState[] joints~%~%# This represents the end-effector state (cartesian position and contact forces)~%whole_body_state_msgs/ContactState[] contacts~%~%================================================================================~%MSG: whole_body_state_msgs/CentroidalState~%# This message describes the states of a centroidal state.~%#~%# The centroidal state is defined by:~%#  * the position, velocity and acceleration of the CoM,~%#  * the base orientation and angular velocity, and~%#  * the linear and angular momentum and their rates.~%# where each quantity is expressed in the world frame.~%~%# Center of mass~%geometry_msgs/Vector3 com_position~%geometry_msgs/Vector3 com_velocity~%~%# Base orientation~%geometry_msgs/Quaternion base_orientation~%geometry_msgs/Vector3 base_angular_velocity~%~%# Linear and angular momentum~%geometry_msgs/Twist momenta~%geometry_msgs/Twist momenta_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: whole_body_state_msgs/JointState~%# This message describes the state of an actuated joints.~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the joint name~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s),~%#  * the acceleration of the joint (rad/s^2 or m/s^2), and~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%~%~%# Name of the joint~%string name~%~%# States of the joint~%float64 position~%float64 velocity~%float64 acceleration~%float64 effort~%~%================================================================================~%MSG: whole_body_state_msgs/ContactState~%# This message describes the state of contact or end-effector body.~%#~%# The contact state is expressed in the world frame. A contact state is~%# defined by:~%#  * type of contact~%#  * status of the contact~%#  * the frame name~%#  * the pose of the contact,~%#  * the velocity of the contact,~%#  * the wrench of the contact~%#  * the normal vector that defines the surface~%#  * the friction coefficient of the surface~%#  * its classified state, if available~%~%# Type of contact identifiers~%uint8 LOCOMOTION   = 0~%uint8 MANIPULATION = 1~%~%# Type of contact states~%uint8 UNKNOWN  = 0  # 0 because it's the default for int8~%uint8 INACTIVE = 1~%uint8 ACTIVE   = 2~%uint8 SLIPPING = 3~%~%# Name of the contact body~%string name~%~%# Type of contact~%uint8 type~%~%# Contact status (e.g. from a contact state estimator)~%uint8 status~%~%# State of the contact body~%geometry_msgs/Pose pose~%geometry_msgs/Twist velocity~%geometry_msgs/Wrench wrench~%geometry_msgs/Vector3 surface_normal~%float64 friction_coefficient~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: whole_body_state_msgs/JointCommand~%# This message describes the state of joint command.~%#~%# The state of each command (revolute or prismatic) is defined by:~%#  * the total command to the joint (Nm or N),~%#  * the feedforward command component (Nm or N), and~%#  * the feedback command component (Nm or N)~%#~%# Each commanded joint is uniquely identified by its name~%~%~%string name~%float64 total~%float64 feedforward~%float64 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WholeBodyController)))
  "Returns full string definition for message of type 'WholeBodyController"
  (cl:format cl:nil "# This message describes the whole-body state of controller.~%#~%# A whole-body controller state is defined by the desired, actual, and~%# error of the whole-body state of the system. The description of~%# every element is defined in their respective messages.~%#~%# The header specifies the time at which the trajectory is published.~%~%~%std_msgs/Header header~%~%# Desired whole-body state~%whole_body_state_msgs/WholeBodyState desired~%~%# Actual whole-body state~%whole_body_state_msgs/WholeBodyState actual~%~%# Error whole-body state~%whole_body_state_msgs/WholeBodyState error~%~%# Command state~%whole_body_state_msgs/JointCommand[] command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: whole_body_state_msgs/WholeBodyState~%# This message describes the whole-body state of rigid body system.~%#~%# A whole-body state is defined by the centroidal, joints and contact states.~%# The description of every element is defined in their respective~%# messages. This state is described in respective time.~%#~%# The centroidal state describes~%#  * the position, velocity and acceleration of the CoM,~%#  * the base orientation and angular velocity, and~%#  * the linear and angular momentum and their rates.~%#~%# The joint states describes:~%#  * the joint name~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s),~%#  * the effort that is applied in the joint (Nm or N).~%# The contact state describes~%#  * the frame name~%#  * the pose of the contact,~%#  * the velocity of the contact, and~%#  * the wrench of the contact~%# The header specifies the time at which the state is published.~%~%~%std_msgs/Header header~%~%# This represent the time state~%float64 time~%~%# This represents the base state (CoM motion, angular motion and centroidal momenta)~%whole_body_state_msgs/CentroidalState centroidal~%~%# This represents the joint state (position, velocity, acceleration and effort)~%whole_body_state_msgs/JointState[] joints~%~%# This represents the end-effector state (cartesian position and contact forces)~%whole_body_state_msgs/ContactState[] contacts~%~%================================================================================~%MSG: whole_body_state_msgs/CentroidalState~%# This message describes the states of a centroidal state.~%#~%# The centroidal state is defined by:~%#  * the position, velocity and acceleration of the CoM,~%#  * the base orientation and angular velocity, and~%#  * the linear and angular momentum and their rates.~%# where each quantity is expressed in the world frame.~%~%# Center of mass~%geometry_msgs/Vector3 com_position~%geometry_msgs/Vector3 com_velocity~%~%# Base orientation~%geometry_msgs/Quaternion base_orientation~%geometry_msgs/Vector3 base_angular_velocity~%~%# Linear and angular momentum~%geometry_msgs/Twist momenta~%geometry_msgs/Twist momenta_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: whole_body_state_msgs/JointState~%# This message describes the state of an actuated joints.~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the joint name~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s),~%#  * the acceleration of the joint (rad/s^2 or m/s^2), and~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%~%~%# Name of the joint~%string name~%~%# States of the joint~%float64 position~%float64 velocity~%float64 acceleration~%float64 effort~%~%================================================================================~%MSG: whole_body_state_msgs/ContactState~%# This message describes the state of contact or end-effector body.~%#~%# The contact state is expressed in the world frame. A contact state is~%# defined by:~%#  * type of contact~%#  * status of the contact~%#  * the frame name~%#  * the pose of the contact,~%#  * the velocity of the contact,~%#  * the wrench of the contact~%#  * the normal vector that defines the surface~%#  * the friction coefficient of the surface~%#  * its classified state, if available~%~%# Type of contact identifiers~%uint8 LOCOMOTION   = 0~%uint8 MANIPULATION = 1~%~%# Type of contact states~%uint8 UNKNOWN  = 0  # 0 because it's the default for int8~%uint8 INACTIVE = 1~%uint8 ACTIVE   = 2~%uint8 SLIPPING = 3~%~%# Name of the contact body~%string name~%~%# Type of contact~%uint8 type~%~%# Contact status (e.g. from a contact state estimator)~%uint8 status~%~%# State of the contact body~%geometry_msgs/Pose pose~%geometry_msgs/Twist velocity~%geometry_msgs/Wrench wrench~%geometry_msgs/Vector3 surface_normal~%float64 friction_coefficient~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: whole_body_state_msgs/JointCommand~%# This message describes the state of joint command.~%#~%# The state of each command (revolute or prismatic) is defined by:~%#  * the total command to the joint (Nm or N),~%#  * the feedforward command component (Nm or N), and~%#  * the feedback command component (Nm or N)~%#~%# Each commanded joint is uniquely identified by its name~%~%~%string name~%float64 total~%float64 feedforward~%float64 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WholeBodyController>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'command) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WholeBodyController>))
  "Converts a ROS message object to a list"
  (cl:list 'WholeBodyController
    (cl:cons ':header (header msg))
    (cl:cons ':desired (desired msg))
    (cl:cons ':actual (actual msg))
    (cl:cons ':error (error msg))
    (cl:cons ':command (command msg))
))
