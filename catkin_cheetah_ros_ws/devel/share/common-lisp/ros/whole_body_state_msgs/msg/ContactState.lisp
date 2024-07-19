; Auto-generated. Do not edit!


(cl:in-package whole_body_state_msgs-msg)


;//! \htmlinclude ContactState.msg.html

(cl:defclass <ContactState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (surface_normal
    :reader surface_normal
    :initarg :surface_normal
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (friction_coefficient
    :reader friction_coefficient
    :initarg :friction_coefficient
    :type cl:float
    :initform 0.0))
)

(cl:defclass ContactState (<ContactState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whole_body_state_msgs-msg:<ContactState> is deprecated: use whole_body_state_msgs-msg:ContactState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:name-val is deprecated.  Use whole_body_state_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:type-val is deprecated.  Use whole_body_state_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:status-val is deprecated.  Use whole_body_state_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:pose-val is deprecated.  Use whole_body_state_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:velocity-val is deprecated.  Use whole_body_state_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:wrench-val is deprecated.  Use whole_body_state_msgs-msg:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'surface_normal-val :lambda-list '(m))
(cl:defmethod surface_normal-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:surface_normal-val is deprecated.  Use whole_body_state_msgs-msg:surface_normal instead.")
  (surface_normal m))

(cl:ensure-generic-function 'friction_coefficient-val :lambda-list '(m))
(cl:defmethod friction_coefficient-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whole_body_state_msgs-msg:friction_coefficient-val is deprecated.  Use whole_body_state_msgs-msg:friction_coefficient instead.")
  (friction_coefficient m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ContactState>)))
    "Constants for message type '<ContactState>"
  '((:LOCOMOTION . 0)
    (:MANIPULATION . 1)
    (:UNKNOWN . 0)
    (:INACTIVE . 1)
    (:ACTIVE . 2)
    (:SLIPPING . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ContactState)))
    "Constants for message type 'ContactState"
  '((:LOCOMOTION . 0)
    (:MANIPULATION . 1)
    (:UNKNOWN . 0)
    (:INACTIVE . 1)
    (:ACTIVE . 2)
    (:SLIPPING . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactState>) ostream)
  "Serializes a message object of type '<ContactState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'surface_normal) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'friction_coefficient))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactState>) istream)
  "Deserializes a message object of type '<ContactState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'surface_normal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'friction_coefficient) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactState>)))
  "Returns string type for a message object of type '<ContactState>"
  "whole_body_state_msgs/ContactState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactState)))
  "Returns string type for a message object of type 'ContactState"
  "whole_body_state_msgs/ContactState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactState>)))
  "Returns md5sum for a message object of type '<ContactState>"
  "6b5fad21fd4b53083962e646c448a552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactState)))
  "Returns md5sum for a message object of type 'ContactState"
  "6b5fad21fd4b53083962e646c448a552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactState>)))
  "Returns full string definition for message of type '<ContactState>"
  (cl:format cl:nil "# This message describes the state of contact or end-effector body.~%#~%# The contact state is expressed in the world frame. A contact state is~%# defined by:~%#  * type of contact~%#  * status of the contact~%#  * the frame name~%#  * the pose of the contact,~%#  * the velocity of the contact,~%#  * the wrench of the contact~%#  * the normal vector that defines the surface~%#  * the friction coefficient of the surface~%#  * its classified state, if available~%~%# Type of contact identifiers~%uint8 LOCOMOTION   = 0~%uint8 MANIPULATION = 1~%~%# Type of contact states~%uint8 UNKNOWN  = 0  # 0 because it's the default for int8~%uint8 INACTIVE = 1~%uint8 ACTIVE   = 2~%uint8 SLIPPING = 3~%~%# Name of the contact body~%string name~%~%# Type of contact~%uint8 type~%~%# Contact status (e.g. from a contact state estimator)~%uint8 status~%~%# State of the contact body~%geometry_msgs/Pose pose~%geometry_msgs/Twist velocity~%geometry_msgs/Wrench wrench~%geometry_msgs/Vector3 surface_normal~%float64 friction_coefficient~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactState)))
  "Returns full string definition for message of type 'ContactState"
  (cl:format cl:nil "# This message describes the state of contact or end-effector body.~%#~%# The contact state is expressed in the world frame. A contact state is~%# defined by:~%#  * type of contact~%#  * status of the contact~%#  * the frame name~%#  * the pose of the contact,~%#  * the velocity of the contact,~%#  * the wrench of the contact~%#  * the normal vector that defines the surface~%#  * the friction coefficient of the surface~%#  * its classified state, if available~%~%# Type of contact identifiers~%uint8 LOCOMOTION   = 0~%uint8 MANIPULATION = 1~%~%# Type of contact states~%uint8 UNKNOWN  = 0  # 0 because it's the default for int8~%uint8 INACTIVE = 1~%uint8 ACTIVE   = 2~%uint8 SLIPPING = 3~%~%# Name of the contact body~%string name~%~%# Type of contact~%uint8 type~%~%# Contact status (e.g. from a contact state estimator)~%uint8 status~%~%# State of the contact body~%geometry_msgs/Pose pose~%geometry_msgs/Twist velocity~%geometry_msgs/Wrench wrench~%geometry_msgs/Vector3 surface_normal~%float64 friction_coefficient~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'surface_normal))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactState>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactState
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':status (status msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':surface_normal (surface_normal msg))
    (cl:cons ':friction_coefficient (friction_coefficient msg))
))
