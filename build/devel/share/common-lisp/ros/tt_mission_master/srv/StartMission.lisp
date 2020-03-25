; Auto-generated. Do not edit!


(cl:in-package tt_mission_master-srv)


;//! \htmlinclude StartMission-request.msg.html

(cl:defclass <StartMission-request> (roslisp-msg-protocol:ros-message)
  ((arg1
    :reader arg1
    :initarg :arg1
    :type cl:string
    :initform ""))
)

(cl:defclass StartMission-request (<StartMission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tt_mission_master-srv:<StartMission-request> is deprecated: use tt_mission_master-srv:StartMission-request instead.")))

(cl:ensure-generic-function 'arg1-val :lambda-list '(m))
(cl:defmethod arg1-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tt_mission_master-srv:arg1-val is deprecated.  Use tt_mission_master-srv:arg1 instead.")
  (arg1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMission-request>) ostream)
  "Serializes a message object of type '<StartMission-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arg1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arg1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMission-request>) istream)
  "Deserializes a message object of type '<StartMission-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arg1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMission-request>)))
  "Returns string type for a service object of type '<StartMission-request>"
  "tt_mission_master/StartMissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission-request)))
  "Returns string type for a service object of type 'StartMission-request"
  "tt_mission_master/StartMissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMission-request>)))
  "Returns md5sum for a message object of type '<StartMission-request>"
  "e90883d443fcd8a6f0c6255a48a3f690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMission-request)))
  "Returns md5sum for a message object of type 'StartMission-request"
  "e90883d443fcd8a6f0c6255a48a3f690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMission-request>)))
  "Returns full string definition for message of type '<StartMission-request>"
  (cl:format cl:nil "string arg1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMission-request)))
  "Returns full string definition for message of type 'StartMission-request"
  (cl:format cl:nil "string arg1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMission-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'arg1))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMission-request
    (cl:cons ':arg1 (arg1 msg))
))
;//! \htmlinclude StartMission-response.msg.html

(cl:defclass <StartMission-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass StartMission-response (<StartMission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tt_mission_master-srv:<StartMission-response> is deprecated: use tt_mission_master-srv:StartMission-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StartMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tt_mission_master-srv:result-val is deprecated.  Use tt_mission_master-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMission-response>) ostream)
  "Serializes a message object of type '<StartMission-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMission-response>) istream)
  "Deserializes a message object of type '<StartMission-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMission-response>)))
  "Returns string type for a service object of type '<StartMission-response>"
  "tt_mission_master/StartMissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission-response)))
  "Returns string type for a service object of type 'StartMission-response"
  "tt_mission_master/StartMissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMission-response>)))
  "Returns md5sum for a message object of type '<StartMission-response>"
  "e90883d443fcd8a6f0c6255a48a3f690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMission-response)))
  "Returns md5sum for a message object of type 'StartMission-response"
  "e90883d443fcd8a6f0c6255a48a3f690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMission-response>)))
  "Returns full string definition for message of type '<StartMission-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMission-response)))
  "Returns full string definition for message of type 'StartMission-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMission-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMission-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartMission)))
  'StartMission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartMission)))
  'StartMission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission)))
  "Returns string type for a service object of type '<StartMission>"
  "tt_mission_master/StartMission")