; Auto-generated. Do not edit!


(cl:in-package quadruped_ctrl-msg)


;//! \htmlinclude commandDes.msg.html

(cl:defclass <commandDes> (roslisp-msg-protocol:ros-message)
  ((com_position
    :reader com_position
    :initarg :com_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (com_velocity
    :reader com_velocity
    :initarg :com_velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass commandDes (<commandDes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <commandDes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'commandDes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadruped_ctrl-msg:<commandDes> is deprecated: use quadruped_ctrl-msg:commandDes instead.")))

(cl:ensure-generic-function 'com_position-val :lambda-list '(m))
(cl:defmethod com_position-val ((m <commandDes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadruped_ctrl-msg:com_position-val is deprecated.  Use quadruped_ctrl-msg:com_position instead.")
  (com_position m))

(cl:ensure-generic-function 'com_velocity-val :lambda-list '(m))
(cl:defmethod com_velocity-val ((m <commandDes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadruped_ctrl-msg:com_velocity-val is deprecated.  Use quadruped_ctrl-msg:com_velocity instead.")
  (com_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <commandDes>) ostream)
  "Serializes a message object of type '<commandDes>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'com_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'com_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'com_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'com_velocity))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <commandDes>) istream)
  "Deserializes a message object of type '<commandDes>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'com_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'com_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'com_velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'com_velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<commandDes>)))
  "Returns string type for a message object of type '<commandDes>"
  "quadruped_ctrl/commandDes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'commandDes)))
  "Returns string type for a message object of type 'commandDes"
  "quadruped_ctrl/commandDes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<commandDes>)))
  "Returns md5sum for a message object of type '<commandDes>"
  "c18e8a9edeafcfe5e0c5df4db6c81c60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'commandDes)))
  "Returns md5sum for a message object of type 'commandDes"
  "c18e8a9edeafcfe5e0c5df4db6c81c60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<commandDes>)))
  "Returns full string definition for message of type '<commandDes>"
  (cl:format cl:nil "float64[] com_position~%float64[] com_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'commandDes)))
  "Returns full string definition for message of type 'commandDes"
  (cl:format cl:nil "float64[] com_position~%float64[] com_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <commandDes>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'com_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'com_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <commandDes>))
  "Converts a ROS message object to a list"
  (cl:list 'commandDes
    (cl:cons ':com_position (com_position msg))
    (cl:cons ':com_velocity (com_velocity msg))
))
