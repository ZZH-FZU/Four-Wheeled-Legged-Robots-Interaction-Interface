;; Auto-generated. Do not edit!


(when (boundp 'whole_body_state_msgs::JointState)
  (if (not (find-package "WHOLE_BODY_STATE_MSGS"))
    (make-package "WHOLE_BODY_STATE_MSGS"))
  (shadow 'JointState (find-package "WHOLE_BODY_STATE_MSGS")))
(unless (find-package "WHOLE_BODY_STATE_MSGS::JOINTSTATE")
  (make-package "WHOLE_BODY_STATE_MSGS::JOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointState.msg.html


(defclass whole_body_state_msgs::JointState
  :super ros::object
  :slots (_name _position _velocity _acceleration _effort ))

(defmethod whole_body_state_msgs::JointState
  (:init
   (&key
    ((:name __name) "")
    ((:position __position) 0.0)
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:effort __effort) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _position (float __position))
   (setq _velocity (float __velocity))
   (setq _acceleration (float __acceleration))
   (setq _effort (float __effort))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _position
    8
    ;; float64 _velocity
    8
    ;; float64 _acceleration
    8
    ;; float64 _effort
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _effort
       (sys::poke _effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _effort
     (setq _effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get whole_body_state_msgs::JointState :md5sum-) "b5c92fc99c5d79e265770c8ce99bf79f")
(setf (get whole_body_state_msgs::JointState :datatype-) "whole_body_state_msgs/JointState")
(setf (get whole_body_state_msgs::JointState :definition-)
      "# This message describes the state of an actuated joints.
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

")



(provide :whole_body_state_msgs/JointState "b5c92fc99c5d79e265770c8ce99bf79f")


