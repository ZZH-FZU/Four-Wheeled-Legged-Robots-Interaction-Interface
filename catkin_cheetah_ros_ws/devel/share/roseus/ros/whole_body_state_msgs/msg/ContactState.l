;; Auto-generated. Do not edit!


(when (boundp 'whole_body_state_msgs::ContactState)
  (if (not (find-package "WHOLE_BODY_STATE_MSGS"))
    (make-package "WHOLE_BODY_STATE_MSGS"))
  (shadow 'ContactState (find-package "WHOLE_BODY_STATE_MSGS")))
(unless (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE")
  (make-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ContactState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*LOCOMOTION*" (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(shadow '*LOCOMOTION* (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(defconstant whole_body_state_msgs::ContactState::*LOCOMOTION* 0)
(intern "*MANIPULATION*" (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(shadow '*MANIPULATION* (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(defconstant whole_body_state_msgs::ContactState::*MANIPULATION* 1)
(intern "*UNKNOWN*" (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(shadow '*UNKNOWN* (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(defconstant whole_body_state_msgs::ContactState::*UNKNOWN* 0)
(intern "*INACTIVE*" (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(shadow '*INACTIVE* (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(defconstant whole_body_state_msgs::ContactState::*INACTIVE* 1)
(intern "*ACTIVE*" (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(shadow '*ACTIVE* (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(defconstant whole_body_state_msgs::ContactState::*ACTIVE* 2)
(intern "*SLIPPING*" (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(shadow '*SLIPPING* (find-package "WHOLE_BODY_STATE_MSGS::CONTACTSTATE"))
(defconstant whole_body_state_msgs::ContactState::*SLIPPING* 3)

(defun whole_body_state_msgs::ContactState-to-symbol (const)
  (cond
        ((= const 0) 'whole_body_state_msgs::ContactState::*LOCOMOTION*)
        ((= const 1) 'whole_body_state_msgs::ContactState::*MANIPULATION*)
        ((= const 0) 'whole_body_state_msgs::ContactState::*UNKNOWN*)
        ((= const 1) 'whole_body_state_msgs::ContactState::*INACTIVE*)
        ((= const 2) 'whole_body_state_msgs::ContactState::*ACTIVE*)
        ((= const 3) 'whole_body_state_msgs::ContactState::*SLIPPING*)
        (t nil)))

(defclass whole_body_state_msgs::ContactState
  :super ros::object
  :slots (_name _type _status _pose _velocity _wrench _surface_normal _friction_coefficient ))

(defmethod whole_body_state_msgs::ContactState
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) 0)
    ((:status __status) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    ((:surface_normal __surface_normal) (instance geometry_msgs::Vector3 :init))
    ((:friction_coefficient __friction_coefficient) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (round __type))
   (setq _status (round __status))
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _wrench __wrench)
   (setq _surface_normal __surface_normal)
   (setq _friction_coefficient (float __friction_coefficient))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:surface_normal
   (&rest __surface_normal)
   (if (keywordp (car __surface_normal))
       (send* _surface_normal __surface_normal)
     (progn
       (if __surface_normal (setq _surface_normal (car __surface_normal)))
       _surface_normal)))
  (:friction_coefficient
   (&optional __friction_coefficient)
   (if __friction_coefficient (setq _friction_coefficient __friction_coefficient)) _friction_coefficient)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _type
    1
    ;; uint8 _status
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ;; geometry_msgs/Vector3 _surface_normal
    (send _surface_normal :serialization-length)
    ;; float64 _friction_coefficient
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _status
       (write-byte _status s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;; geometry_msgs/Vector3 _surface_normal
       (send _surface_normal :serialize s)
     ;; float64 _friction_coefficient
       (sys::poke _friction_coefficient (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;; geometry_msgs/Vector3 _surface_normal
     (send _surface_normal :deserialize buf ptr-) (incf ptr- (send _surface_normal :serialization-length))
   ;; float64 _friction_coefficient
     (setq _friction_coefficient (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get whole_body_state_msgs::ContactState :md5sum-) "6b5fad21fd4b53083962e646c448a552")
(setf (get whole_body_state_msgs::ContactState :datatype-) "whole_body_state_msgs/ContactState")
(setf (get whole_body_state_msgs::ContactState :definition-)
      "# This message describes the state of contact or end-effector body.
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

")



(provide :whole_body_state_msgs/ContactState "6b5fad21fd4b53083962e646c448a552")


