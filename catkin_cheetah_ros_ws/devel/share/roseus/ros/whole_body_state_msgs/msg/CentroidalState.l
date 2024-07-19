;; Auto-generated. Do not edit!


(when (boundp 'whole_body_state_msgs::CentroidalState)
  (if (not (find-package "WHOLE_BODY_STATE_MSGS"))
    (make-package "WHOLE_BODY_STATE_MSGS"))
  (shadow 'CentroidalState (find-package "WHOLE_BODY_STATE_MSGS")))
(unless (find-package "WHOLE_BODY_STATE_MSGS::CENTROIDALSTATE")
  (make-package "WHOLE_BODY_STATE_MSGS::CENTROIDALSTATE"))

(in-package "ROS")
;;//! \htmlinclude CentroidalState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass whole_body_state_msgs::CentroidalState
  :super ros::object
  :slots (_com_position _com_velocity _base_orientation _base_angular_velocity _momenta _momenta_rate ))

(defmethod whole_body_state_msgs::CentroidalState
  (:init
   (&key
    ((:com_position __com_position) (instance geometry_msgs::Vector3 :init))
    ((:com_velocity __com_velocity) (instance geometry_msgs::Vector3 :init))
    ((:base_orientation __base_orientation) (instance geometry_msgs::Quaternion :init))
    ((:base_angular_velocity __base_angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:momenta __momenta) (instance geometry_msgs::Twist :init))
    ((:momenta_rate __momenta_rate) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _com_position __com_position)
   (setq _com_velocity __com_velocity)
   (setq _base_orientation __base_orientation)
   (setq _base_angular_velocity __base_angular_velocity)
   (setq _momenta __momenta)
   (setq _momenta_rate __momenta_rate)
   self)
  (:com_position
   (&rest __com_position)
   (if (keywordp (car __com_position))
       (send* _com_position __com_position)
     (progn
       (if __com_position (setq _com_position (car __com_position)))
       _com_position)))
  (:com_velocity
   (&rest __com_velocity)
   (if (keywordp (car __com_velocity))
       (send* _com_velocity __com_velocity)
     (progn
       (if __com_velocity (setq _com_velocity (car __com_velocity)))
       _com_velocity)))
  (:base_orientation
   (&rest __base_orientation)
   (if (keywordp (car __base_orientation))
       (send* _base_orientation __base_orientation)
     (progn
       (if __base_orientation (setq _base_orientation (car __base_orientation)))
       _base_orientation)))
  (:base_angular_velocity
   (&rest __base_angular_velocity)
   (if (keywordp (car __base_angular_velocity))
       (send* _base_angular_velocity __base_angular_velocity)
     (progn
       (if __base_angular_velocity (setq _base_angular_velocity (car __base_angular_velocity)))
       _base_angular_velocity)))
  (:momenta
   (&rest __momenta)
   (if (keywordp (car __momenta))
       (send* _momenta __momenta)
     (progn
       (if __momenta (setq _momenta (car __momenta)))
       _momenta)))
  (:momenta_rate
   (&rest __momenta_rate)
   (if (keywordp (car __momenta_rate))
       (send* _momenta_rate __momenta_rate)
     (progn
       (if __momenta_rate (setq _momenta_rate (car __momenta_rate)))
       _momenta_rate)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _com_position
    (send _com_position :serialization-length)
    ;; geometry_msgs/Vector3 _com_velocity
    (send _com_velocity :serialization-length)
    ;; geometry_msgs/Quaternion _base_orientation
    (send _base_orientation :serialization-length)
    ;; geometry_msgs/Vector3 _base_angular_velocity
    (send _base_angular_velocity :serialization-length)
    ;; geometry_msgs/Twist _momenta
    (send _momenta :serialization-length)
    ;; geometry_msgs/Twist _momenta_rate
    (send _momenta_rate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _com_position
       (send _com_position :serialize s)
     ;; geometry_msgs/Vector3 _com_velocity
       (send _com_velocity :serialize s)
     ;; geometry_msgs/Quaternion _base_orientation
       (send _base_orientation :serialize s)
     ;; geometry_msgs/Vector3 _base_angular_velocity
       (send _base_angular_velocity :serialize s)
     ;; geometry_msgs/Twist _momenta
       (send _momenta :serialize s)
     ;; geometry_msgs/Twist _momenta_rate
       (send _momenta_rate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _com_position
     (send _com_position :deserialize buf ptr-) (incf ptr- (send _com_position :serialization-length))
   ;; geometry_msgs/Vector3 _com_velocity
     (send _com_velocity :deserialize buf ptr-) (incf ptr- (send _com_velocity :serialization-length))
   ;; geometry_msgs/Quaternion _base_orientation
     (send _base_orientation :deserialize buf ptr-) (incf ptr- (send _base_orientation :serialization-length))
   ;; geometry_msgs/Vector3 _base_angular_velocity
     (send _base_angular_velocity :deserialize buf ptr-) (incf ptr- (send _base_angular_velocity :serialization-length))
   ;; geometry_msgs/Twist _momenta
     (send _momenta :deserialize buf ptr-) (incf ptr- (send _momenta :serialization-length))
   ;; geometry_msgs/Twist _momenta_rate
     (send _momenta_rate :deserialize buf ptr-) (incf ptr- (send _momenta_rate :serialization-length))
   ;;
   self)
  )

(setf (get whole_body_state_msgs::CentroidalState :md5sum-) "23ae41306b44b6e3e1e14f56a5849ac7")
(setf (get whole_body_state_msgs::CentroidalState :datatype-) "whole_body_state_msgs/CentroidalState")
(setf (get whole_body_state_msgs::CentroidalState :definition-)
      "# This message describes the states of a centroidal state.
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

")



(provide :whole_body_state_msgs/CentroidalState "23ae41306b44b6e3e1e14f56a5849ac7")


