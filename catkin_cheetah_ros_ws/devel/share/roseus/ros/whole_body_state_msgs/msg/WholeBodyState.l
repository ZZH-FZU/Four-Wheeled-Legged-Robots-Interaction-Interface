;; Auto-generated. Do not edit!


(when (boundp 'whole_body_state_msgs::WholeBodyState)
  (if (not (find-package "WHOLE_BODY_STATE_MSGS"))
    (make-package "WHOLE_BODY_STATE_MSGS"))
  (shadow 'WholeBodyState (find-package "WHOLE_BODY_STATE_MSGS")))
(unless (find-package "WHOLE_BODY_STATE_MSGS::WHOLEBODYSTATE")
  (make-package "WHOLE_BODY_STATE_MSGS::WHOLEBODYSTATE"))

(in-package "ROS")
;;//! \htmlinclude WholeBodyState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass whole_body_state_msgs::WholeBodyState
  :super ros::object
  :slots (_header _time _centroidal _joints _contacts ))

(defmethod whole_body_state_msgs::WholeBodyState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:centroidal __centroidal) (instance whole_body_state_msgs::CentroidalState :init))
    ((:joints __joints) ())
    ((:contacts __contacts) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (float __time))
   (setq _centroidal __centroidal)
   (setq _joints __joints)
   (setq _contacts __contacts)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:centroidal
   (&rest __centroidal)
   (if (keywordp (car __centroidal))
       (send* _centroidal __centroidal)
     (progn
       (if __centroidal (setq _centroidal (car __centroidal)))
       _centroidal)))
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:contacts
   (&rest __contacts)
   (if (keywordp (car __contacts))
       (send* _contacts __contacts)
     (progn
       (if __contacts (setq _contacts (car __contacts)))
       _contacts)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _time
    8
    ;; whole_body_state_msgs/CentroidalState _centroidal
    (send _centroidal :serialization-length)
    ;; whole_body_state_msgs/JointState[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ;; whole_body_state_msgs/ContactState[] _contacts
    (apply #'+ (send-all _contacts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; whole_body_state_msgs/CentroidalState _centroidal
       (send _centroidal :serialize s)
     ;; whole_body_state_msgs/JointState[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;; whole_body_state_msgs/ContactState[] _contacts
     (write-long (length _contacts) s)
     (dolist (elem _contacts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; whole_body_state_msgs/CentroidalState _centroidal
     (send _centroidal :deserialize buf ptr-) (incf ptr- (send _centroidal :serialization-length))
   ;; whole_body_state_msgs/JointState[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance whole_body_state_msgs::JointState :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; whole_body_state_msgs/ContactState[] _contacts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contacts (let (r) (dotimes (i n) (push (instance whole_body_state_msgs::ContactState :init) r)) r))
     (dolist (elem- _contacts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get whole_body_state_msgs::WholeBodyState :md5sum-) "094da535c1076730e6ed16a0acd60d71")
(setf (get whole_body_state_msgs::WholeBodyState :datatype-) "whole_body_state_msgs/WholeBodyState")
(setf (get whole_body_state_msgs::WholeBodyState :definition-)
      "# This message describes the whole-body state of rigid body system.
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

")



(provide :whole_body_state_msgs/WholeBodyState "094da535c1076730e6ed16a0acd60d71")


