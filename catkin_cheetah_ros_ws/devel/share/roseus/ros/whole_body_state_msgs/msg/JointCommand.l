;; Auto-generated. Do not edit!


(when (boundp 'whole_body_state_msgs::JointCommand)
  (if (not (find-package "WHOLE_BODY_STATE_MSGS"))
    (make-package "WHOLE_BODY_STATE_MSGS"))
  (shadow 'JointCommand (find-package "WHOLE_BODY_STATE_MSGS")))
(unless (find-package "WHOLE_BODY_STATE_MSGS::JOINTCOMMAND")
  (make-package "WHOLE_BODY_STATE_MSGS::JOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointCommand.msg.html


(defclass whole_body_state_msgs::JointCommand
  :super ros::object
  :slots (_name _total _feedforward _feedback ))

(defmethod whole_body_state_msgs::JointCommand
  (:init
   (&key
    ((:name __name) "")
    ((:total __total) 0.0)
    ((:feedforward __feedforward) 0.0)
    ((:feedback __feedback) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _total (float __total))
   (setq _feedforward (float __feedforward))
   (setq _feedback (float __feedback))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:feedforward
   (&optional __feedforward)
   (if __feedforward (setq _feedforward __feedforward)) _feedforward)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _total
    8
    ;; float64 _feedforward
    8
    ;; float64 _feedback
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _total
       (sys::poke _total (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feedforward
       (sys::poke _feedforward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feedback
       (sys::poke _feedback (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _total
     (setq _total (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feedforward
     (setq _feedforward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feedback
     (setq _feedback (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get whole_body_state_msgs::JointCommand :md5sum-) "7b9bd29f162ce43dcd78df2226b6f95d")
(setf (get whole_body_state_msgs::JointCommand :datatype-) "whole_body_state_msgs/JointCommand")
(setf (get whole_body_state_msgs::JointCommand :definition-)
      "# This message describes the state of joint command.
#
# The state of each command (revolute or prismatic) is defined by:
#  * the total command to the joint (Nm or N),
#  * the feedforward command component (Nm or N), and
#  * the feedback command component (Nm or N)
#
# Each commanded joint is uniquely identified by its name


string name
float64 total
float64 feedforward
float64 feedback

")



(provide :whole_body_state_msgs/JointCommand "7b9bd29f162ce43dcd78df2226b6f95d")


