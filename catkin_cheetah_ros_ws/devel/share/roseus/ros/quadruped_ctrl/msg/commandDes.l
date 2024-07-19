;; Auto-generated. Do not edit!


(when (boundp 'quadruped_ctrl::commandDes)
  (if (not (find-package "QUADRUPED_CTRL"))
    (make-package "QUADRUPED_CTRL"))
  (shadow 'commandDes (find-package "QUADRUPED_CTRL")))
(unless (find-package "QUADRUPED_CTRL::COMMANDDES")
  (make-package "QUADRUPED_CTRL::COMMANDDES"))

(in-package "ROS")
;;//! \htmlinclude commandDes.msg.html


(defclass quadruped_ctrl::commandDes
  :super ros::object
  :slots (_com_position _com_velocity ))

(defmethod quadruped_ctrl::commandDes
  (:init
   (&key
    ((:com_position __com_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:com_velocity __com_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _com_position __com_position)
   (setq _com_velocity __com_velocity)
   self)
  (:com_position
   (&optional __com_position)
   (if __com_position (setq _com_position __com_position)) _com_position)
  (:com_velocity
   (&optional __com_velocity)
   (if __com_velocity (setq _com_velocity __com_velocity)) _com_velocity)
  (:serialization-length
   ()
   (+
    ;; float64[] _com_position
    (* 8    (length _com_position)) 4
    ;; float64[] _com_velocity
    (* 8    (length _com_velocity)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _com_position
     (write-long (length _com_position) s)
     (dotimes (i (length _com_position))
       (sys::poke (elt _com_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _com_velocity
     (write-long (length _com_velocity) s)
     (dotimes (i (length _com_velocity))
       (sys::poke (elt _com_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _com_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _com_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _com_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _com_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _com_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _com_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get quadruped_ctrl::commandDes :md5sum-) "c18e8a9edeafcfe5e0c5df4db6c81c60")
(setf (get quadruped_ctrl::commandDes :datatype-) "quadruped_ctrl/commandDes")
(setf (get quadruped_ctrl::commandDes :definition-)
      "float64[] com_position
float64[] com_velocity

")



(provide :quadruped_ctrl/commandDes "c18e8a9edeafcfe5e0c5df4db6c81c60")


