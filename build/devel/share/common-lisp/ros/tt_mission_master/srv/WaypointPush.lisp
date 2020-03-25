; Auto-generated. Do not edit!


(cl:in-package tt_mission_master-srv)


;//! \htmlinclude WaypointPush-request.msg.html

(cl:defclass <WaypointPush-request> (roslisp-msg-protocol:ros-message)
  ((start_index
    :reader start_index
    :initarg :start_index
    :type cl:fixnum
    :initform 0)
   (waypoint
    :reader waypoint
    :initarg :waypoint
    :type tt_mission_master-msg:Waypoint
    :initform (cl:make-instance 'tt_mission_master-msg:Waypoint)))
)

(cl:defclass WaypointPush-request (<WaypointPush-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointPush-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointPush-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tt_mission_master-srv:<WaypointPush-request> is deprecated: use tt_mission_master-srv:WaypointPush-request instead.")))

(cl:ensure-generic-function 'start_index-val :lambda-list '(m))
(cl:defmethod start_index-val ((m <WaypointPush-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tt_mission_master-srv:start_index-val is deprecated.  Use tt_mission_master-srv:start_index instead.")
  (start_index m))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <WaypointPush-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tt_mission_master-srv:waypoint-val is deprecated.  Use tt_mission_master-srv:waypoint instead.")
  (waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointPush-request>) ostream)
  "Serializes a message object of type '<WaypointPush-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_index)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointPush-request>) istream)
  "Deserializes a message object of type '<WaypointPush-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_index)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointPush-request>)))
  "Returns string type for a service object of type '<WaypointPush-request>"
  "tt_mission_master/WaypointPushRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointPush-request)))
  "Returns string type for a service object of type 'WaypointPush-request"
  "tt_mission_master/WaypointPushRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointPush-request>)))
  "Returns md5sum for a message object of type '<WaypointPush-request>"
  "06f01f715d9c3c308c16c8e55f6d7ad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointPush-request)))
  "Returns md5sum for a message object of type 'WaypointPush-request"
  "06f01f715d9c3c308c16c8e55f6d7ad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointPush-request>)))
  "Returns full string definition for message of type '<WaypointPush-request>"
  (cl:format cl:nil "~%~%~%~%~%~%uint16 start_index~%tt_mission_master/Waypoint waypoint~%~%================================================================================~%MSG: tt_mission_master/Waypoint~%# Waypoint.msg~%#~%~%# see enum MAV_FRAME~%uint8 frame~%uint8 FRAME_GLOBAL = 0~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_MISSION = 2~%uint8 FRAME_GLOBAL_REL_ALT = 3~%uint8 FRAME_LOCAL_ENU = 4~%~%# see enum MAV_CMD and CommandCode.msg~%uint16 command~%~%bool is_current~%bool autocontinue~%# meaning of this params described in enum MAV_CMD~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float64 x_lat~%float64 y_long~%float64 z_alt~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointPush-request)))
  "Returns full string definition for message of type 'WaypointPush-request"
  (cl:format cl:nil "~%~%~%~%~%~%uint16 start_index~%tt_mission_master/Waypoint waypoint~%~%================================================================================~%MSG: tt_mission_master/Waypoint~%# Waypoint.msg~%#~%~%# see enum MAV_FRAME~%uint8 frame~%uint8 FRAME_GLOBAL = 0~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_MISSION = 2~%uint8 FRAME_GLOBAL_REL_ALT = 3~%uint8 FRAME_LOCAL_ENU = 4~%~%# see enum MAV_CMD and CommandCode.msg~%uint16 command~%~%bool is_current~%bool autocontinue~%# meaning of this params described in enum MAV_CMD~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float64 x_lat~%float64 y_long~%float64 z_alt~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointPush-request>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointPush-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointPush-request
    (cl:cons ':start_index (start_index msg))
    (cl:cons ':waypoint (waypoint msg))
))
;//! \htmlinclude WaypointPush-response.msg.html

(cl:defclass <WaypointPush-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (wp_transfered
    :reader wp_transfered
    :initarg :wp_transfered
    :type cl:integer
    :initform 0))
)

(cl:defclass WaypointPush-response (<WaypointPush-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointPush-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointPush-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tt_mission_master-srv:<WaypointPush-response> is deprecated: use tt_mission_master-srv:WaypointPush-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointPush-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tt_mission_master-srv:success-val is deprecated.  Use tt_mission_master-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'wp_transfered-val :lambda-list '(m))
(cl:defmethod wp_transfered-val ((m <WaypointPush-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tt_mission_master-srv:wp_transfered-val is deprecated.  Use tt_mission_master-srv:wp_transfered instead.")
  (wp_transfered m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointPush-response>) ostream)
  "Serializes a message object of type '<WaypointPush-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wp_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wp_transfered)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointPush-response>) istream)
  "Deserializes a message object of type '<WaypointPush-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointPush-response>)))
  "Returns string type for a service object of type '<WaypointPush-response>"
  "tt_mission_master/WaypointPushResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointPush-response)))
  "Returns string type for a service object of type 'WaypointPush-response"
  "tt_mission_master/WaypointPushResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointPush-response>)))
  "Returns md5sum for a message object of type '<WaypointPush-response>"
  "06f01f715d9c3c308c16c8e55f6d7ad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointPush-response)))
  "Returns md5sum for a message object of type 'WaypointPush-response"
  "06f01f715d9c3c308c16c8e55f6d7ad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointPush-response>)))
  "Returns full string definition for message of type '<WaypointPush-response>"
  (cl:format cl:nil "bool success~%uint32 wp_transfered~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointPush-response)))
  "Returns full string definition for message of type 'WaypointPush-response"
  (cl:format cl:nil "bool success~%uint32 wp_transfered~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointPush-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointPush-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointPush-response
    (cl:cons ':success (success msg))
    (cl:cons ':wp_transfered (wp_transfered msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointPush)))
  'WaypointPush-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointPush)))
  'WaypointPush-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointPush)))
  "Returns string type for a service object of type '<WaypointPush>"
  "tt_mission_master/WaypointPush")