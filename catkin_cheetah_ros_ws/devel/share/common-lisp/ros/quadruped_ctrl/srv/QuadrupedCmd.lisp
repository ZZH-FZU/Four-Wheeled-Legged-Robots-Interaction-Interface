; Auto-generated. Do not edit!


(cl:in-package quadruped_ctrl-srv)


;//! \htmlinclude QuadrupedCmd-request.msg.html

(cl:defclass <QuadrupedCmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass QuadrupedCmd-request (<QuadrupedCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadrupedCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadrupedCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadruped_ctrl-srv:<QuadrupedCmd-request> is deprecated: use quadruped_ctrl-srv:QuadrupedCmd-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <QuadrupedCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadruped_ctrl-srv:cmd-val is deprecated.  Use quadruped_ctrl-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadrupedCmd-request>) ostream)
  "Serializes a message object of type '<QuadrupedCmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadrupedCmd-request>) istream)
  "Deserializes a message object of type '<QuadrupedCmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadrupedCmd-request>)))
  "Returns string type for a service object of type '<QuadrupedCmd-request>"
  "quadruped_ctrl/QuadrupedCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadrupedCmd-request)))
  "Returns string type for a service object of type 'QuadrupedCmd-request"
  "quadruped_ctrl/QuadrupedCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadrupedCmd-request>)))
  "Returns md5sum for a message object of type '<QuadrupedCmd-request>"
  "f5d998487ff22f19faff84885516d9ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadrupedCmd-request)))
  "Returns md5sum for a message object of type 'QuadrupedCmd-request"
  "f5d998487ff22f19faff84885516d9ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadrupedCmd-request>)))
  "Returns full string definition for message of type '<QuadrupedCmd-request>"
  (cl:format cl:nil "int16 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadrupedCmd-request)))
  "Returns full string definition for message of type 'QuadrupedCmd-request"
  (cl:format cl:nil "int16 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadrupedCmd-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadrupedCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadrupedCmd-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude QuadrupedCmd-response.msg.html

(cl:defclass <QuadrupedCmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass QuadrupedCmd-response (<QuadrupedCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadrupedCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadrupedCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadruped_ctrl-srv:<QuadrupedCmd-response> is deprecated: use quadruped_ctrl-srv:QuadrupedCmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <QuadrupedCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadruped_ctrl-srv:result-val is deprecated.  Use quadruped_ctrl-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <QuadrupedCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadruped_ctrl-srv:description-val is deprecated.  Use quadruped_ctrl-srv:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadrupedCmd-response>) ostream)
  "Serializes a message object of type '<QuadrupedCmd-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadrupedCmd-response>) istream)
  "Deserializes a message object of type '<QuadrupedCmd-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadrupedCmd-response>)))
  "Returns string type for a service object of type '<QuadrupedCmd-response>"
  "quadruped_ctrl/QuadrupedCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadrupedCmd-response)))
  "Returns string type for a service object of type 'QuadrupedCmd-response"
  "quadruped_ctrl/QuadrupedCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadrupedCmd-response>)))
  "Returns md5sum for a message object of type '<QuadrupedCmd-response>"
  "f5d998487ff22f19faff84885516d9ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadrupedCmd-response)))
  "Returns md5sum for a message object of type 'QuadrupedCmd-response"
  "f5d998487ff22f19faff84885516d9ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadrupedCmd-response>)))
  "Returns full string definition for message of type '<QuadrupedCmd-response>"
  (cl:format cl:nil "int16 result				#0:success, -1:false~%string description   #relative description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadrupedCmd-response)))
  "Returns full string definition for message of type 'QuadrupedCmd-response"
  (cl:format cl:nil "int16 result				#0:success, -1:false~%string description   #relative description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadrupedCmd-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadrupedCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadrupedCmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':description (description msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QuadrupedCmd)))
  'QuadrupedCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QuadrupedCmd)))
  'QuadrupedCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadrupedCmd)))
  "Returns string type for a service object of type '<QuadrupedCmd>"
  "quadruped_ctrl/QuadrupedCmd")