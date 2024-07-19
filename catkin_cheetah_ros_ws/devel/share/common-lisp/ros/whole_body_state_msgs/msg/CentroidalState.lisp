; Auto-generated. Do not edit!


(cl:in-package whole_body_state_msgs-msg)


;//! \htmlinclude CentroidalState.msg.html

(cl:defclass <CentroidalState> (roslisp-msg-protocol:ros-message)
  ((com_position
    :reader com_position
    :initarg :com_position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (com_velocity
    :reader com_velocity
    :initarg :com_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (base_orientation
    :reader base_orientation
    :initarg :base_orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (base_angular_velocity
    :reader base_angular_velocity
    :initarg :base_angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (momenta
    :reader momenta
    :initarg :momenta
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (momenta_rate
    :reader momenta_rate
    :initarg :momenta_rate
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass CentroidalState (<CentroidalState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CentroidalState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CentroidalState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whole_body_state_msgs-msg:<CentroidalState> is deprecated: use whole_body_state_msgs-msg:CentroidalState instead.")))

(cl:ensure-generic-function 'com_position-val :lambda-list '(m))
(cl:defmethod com_position-val ((m <CentroidalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:com_position-val is deprecated.  Use whole_body_state_msgs-msg:com_position instead.")
  (com_position m))

(cl:ensure-generic-function 'com_velocity-val :lambda-list '(m))
(cl:defmethod com_velocity-val ((m <CentroidalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:com_velocity-val is deprecated.  Use whole_body_state_msgs-msg:com_velocity instead.")
  (com_velocity m))

(cl:ensure-generic-function 'base_orientation-val :lambda-list '(m))
(cl:defmethod base_orientation-val ((m <CentroidalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:base_orientation-val is deprecated.  Use whole_body_state_msgs-msg:base_orientation instead.")
  (base_orientation m))

(cl:ensure-generic-function 'base_angular_velocity-val :lambda-list '(m))
(cl:defmethod base_angular_velocity-val ((m <CentroidalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:base_angular_velocity-val is deprecated.  Use whole_body_state_msgs-msg:base_angular_velocity instead.")
  (base_angular_velocity m))

(cl:ensure-generic-function 'momenta-val :lambda-list '(m))
(cl:defmethod momenta-val ((m <CentroidalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:momenta-val is deprecated.  Use whole_body_state_msgs-msg:momenta instead.")
  (momenta m))

(cl:ensure-generic-function 'momenta_rate-val :lambda-list '(m))
(cl:defmethod momenta_rate-val ((m <CentroidalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:momenta_rate-val is deprecated.  Use whole_body_state_msgs-msg:momenta_rate instead.")
  (momenta_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CentroidalState>) ostream)
  "Serializes a message object of type '<CentroidalState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'com_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'com_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'momenta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'momenta_rate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CentroidalState>) istream)
  "Deserializes a message object of type '<CentroidalState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'com_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'com_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'momenta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'momenta_rate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CentroidalState>)))
  "Returns string type for a message object of type '<CentroidalState>"
  "whole_body_state_msgs/CentroidalState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CentroidalState)))
  "Returns string type for a message object of type 'CentroidalState"
  "whole_body_state_msgs/CentroidalState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CentroidalState>)))
  "Returns md5sum for a message object of type '<CentroidalState>"
  "23ae41306b44b6e3e1e14f56a5849ac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CentroidalState)))
  "Returns md5sum for a message object of type 'CentroidalState"
  "23ae41306b44b6e3e1e14f56a5849ac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CentroidalState>)))
  "Returns full string definition for message of type '<CentroidalState>"
  (cl:format cl:nil "# This message describes the states of a centroidal state.~%#~%# The centroidal state is defined by:~%#  * the position, velocity and acceleration of the CoM,~%#  * the base orientation and angular velocity, and~%#  * the linear and angular momentum and their rates.~%# where each quantity is expressed in the world frame.~%~%# Center of mass~%geometry_msgs/Vector3 com_position~%geometry_msgs/Vector3 com_velocity~%~%# Base orientation~%geometry_msgs/Quaternion base_orientation~%geometry_msgs/Vector3 base_angular_velocity~%~%# Linear and angular momentum~%geometry_msgs/Twist momenta~%geometry_msgs/Twist momenta_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CentroidalState)))
  "Returns full string definition for message of type 'CentroidalState"
  (cl:format cl:nil "# This message describes the states of a centroidal state.~%#~%# The centroidal state is defined by:~%#  * the position, velocity and acceleration of the CoM,~%#  * the base orientation and angular velocity, and~%#  * the linear and angular momentum and their rates.~%# where each quantity is expressed in the world frame.~%~%# Center of mass~%geometry_msgs/Vector3 com_position~%geometry_msgs/Vector3 com_velocity~%~%# Base orientation~%geometry_msgs/Quaternion base_orientation~%geometry_msgs/Vector3 base_angular_velocity~%~%# Linear and angular momentum~%geometry_msgs/Twist momenta~%geometry_msgs/Twist momenta_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CentroidalState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'com_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'com_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'momenta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'momenta_rate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CentroidalState>))
  "Converts a ROS message object to a list"
  (cl:list 'CentroidalState
    (cl:cons ':com_position (com_position msg))
    (cl:cons ':com_velocity (com_velocity msg))
    (cl:cons ':base_orientation (base_orientation msg))
    (cl:cons ':base_angular_velocity (base_angular_velocity msg))
    (cl:cons ':momenta (momenta msg))
    (cl:cons ':momenta_rate (momenta_rate msg))
))
