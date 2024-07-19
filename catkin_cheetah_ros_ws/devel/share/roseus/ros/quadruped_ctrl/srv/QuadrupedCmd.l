;; Auto-generated. Do not edit!


(when (boundp 'quadruped_ctrl::QuadrupedCmd)
  (if (not (find-package "QUADRUPED_CTRL"))
    (make-package "QUADRUPED_CTRL"))
  (shadow 'QuadrupedCmd (find-package "QUADRUPED_CTRL")))
(unless (find-package "QUADRUPED_CTRL::QUADRUPEDCMD")
  (make-package "QUADRUPED_CTRL::QUADRUPEDCMD"))
(unless (find-package "QUADRUPED_CTRL::QUADRUPEDCMDREQUEST")
  (make-package "QUADRUPED_CTRL::QUADRUPEDCMDREQUEST"))
(unless (find-package "QUADRUPED_CTRL::QUADRUPEDCMDRESPONSE")
  (make-package "QUADRUPED_CTRL::QUADRUPEDCMDRESPONSE"))

(in-package "ROS")





(defclass quadruped_ctrl::QuadrupedCmdRequest
  :super ros::object
  :slots (_cmd ))

(defmethod quadruped_ctrl::QuadrupedCmdRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; int16 _cmd
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _cmd
       (write-word _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _cmd
     (setq _cmd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass quadruped_ctrl::QuadrupedCmdResponse
  :super ros::object
  :slots (_result _description ))

(defmethod quadruped_ctrl::QuadrupedCmdResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _description (string __description))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; int16 _result
    2
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _result
       (write-word _result s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _result
     (setq _result (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass quadruped_ctrl::QuadrupedCmd
  :super ros::object
  :slots ())

(setf (get quadruped_ctrl::QuadrupedCmd :md5sum-) "f5d998487ff22f19faff84885516d9ae")
(setf (get quadruped_ctrl::QuadrupedCmd :datatype-) "quadruped_ctrl/QuadrupedCmd")
(setf (get quadruped_ctrl::QuadrupedCmd :request) quadruped_ctrl::QuadrupedCmdRequest)
(setf (get quadruped_ctrl::QuadrupedCmd :response) quadruped_ctrl::QuadrupedCmdResponse)

(defmethod quadruped_ctrl::QuadrupedCmdRequest
  (:response () (instance quadruped_ctrl::QuadrupedCmdResponse :init)))

(setf (get quadruped_ctrl::QuadrupedCmdRequest :md5sum-) "f5d998487ff22f19faff84885516d9ae")
(setf (get quadruped_ctrl::QuadrupedCmdRequest :datatype-) "quadruped_ctrl/QuadrupedCmdRequest")
(setf (get quadruped_ctrl::QuadrupedCmdRequest :definition-)
      "int16 cmd
---
int16 result				#0:success, -1:false
string description   #relative description

")

(setf (get quadruped_ctrl::QuadrupedCmdResponse :md5sum-) "f5d998487ff22f19faff84885516d9ae")
(setf (get quadruped_ctrl::QuadrupedCmdResponse :datatype-) "quadruped_ctrl/QuadrupedCmdResponse")
(setf (get quadruped_ctrl::QuadrupedCmdResponse :definition-)
      "int16 cmd
---
int16 result				#0:success, -1:false
string description   #relative description

")



(provide :quadruped_ctrl/QuadrupedCmd "f5d998487ff22f19faff84885516d9ae")


