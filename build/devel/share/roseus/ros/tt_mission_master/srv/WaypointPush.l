;; Auto-generated. Do not edit!


(when (boundp 'tt_mission_master::WaypointPush)
  (if (not (find-package "TT_MISSION_MASTER"))
    (make-package "TT_MISSION_MASTER"))
  (shadow 'WaypointPush (find-package "TT_MISSION_MASTER")))
(unless (find-package "TT_MISSION_MASTER::WAYPOINTPUSH")
  (make-package "TT_MISSION_MASTER::WAYPOINTPUSH"))
(unless (find-package "TT_MISSION_MASTER::WAYPOINTPUSHREQUEST")
  (make-package "TT_MISSION_MASTER::WAYPOINTPUSHREQUEST"))
(unless (find-package "TT_MISSION_MASTER::WAYPOINTPUSHRESPONSE")
  (make-package "TT_MISSION_MASTER::WAYPOINTPUSHRESPONSE"))

(in-package "ROS")





(defclass tt_mission_master::WaypointPushRequest
  :super ros::object
  :slots (_start_index _waypoint ))

(defmethod tt_mission_master::WaypointPushRequest
  (:init
   (&key
    ((:start_index __start_index) 0)
    ((:waypoint __waypoint) (instance tt_mission_master::Waypoint :init))
    )
   (send-super :init)
   (setq _start_index (round __start_index))
   (setq _waypoint __waypoint)
   self)
  (:start_index
   (&optional __start_index)
   (if __start_index (setq _start_index __start_index)) _start_index)
  (:waypoint
   (&rest __waypoint)
   (if (keywordp (car __waypoint))
       (send* _waypoint __waypoint)
     (progn
       (if __waypoint (setq _waypoint (car __waypoint)))
       _waypoint)))
  (:serialization-length
   ()
   (+
    ;; uint16 _start_index
    2
    ;; tt_mission_master/Waypoint _waypoint
    (send _waypoint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _start_index
       (write-word _start_index s)
     ;; tt_mission_master/Waypoint _waypoint
       (send _waypoint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _start_index
     (setq _start_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tt_mission_master/Waypoint _waypoint
     (send _waypoint :deserialize buf ptr-) (incf ptr- (send _waypoint :serialization-length))
   ;;
   self)
  )

(defclass tt_mission_master::WaypointPushResponse
  :super ros::object
  :slots (_success _wp_transfered ))

(defmethod tt_mission_master::WaypointPushResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_transfered __wp_transfered) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_transfered (round __wp_transfered))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:wp_transfered
   (&optional __wp_transfered)
   (if __wp_transfered (setq _wp_transfered __wp_transfered)) _wp_transfered)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_transfered
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _wp_transfered
       (write-long _wp_transfered s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _wp_transfered
     (setq _wp_transfered (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tt_mission_master::WaypointPush
  :super ros::object
  :slots ())

(setf (get tt_mission_master::WaypointPush :md5sum-) "06f01f715d9c3c308c16c8e55f6d7ad5")
(setf (get tt_mission_master::WaypointPush :datatype-) "tt_mission_master/WaypointPush")
(setf (get tt_mission_master::WaypointPush :request) tt_mission_master::WaypointPushRequest)
(setf (get tt_mission_master::WaypointPush :response) tt_mission_master::WaypointPushResponse)

(defmethod tt_mission_master::WaypointPushRequest
  (:response () (instance tt_mission_master::WaypointPushResponse :init)))

(setf (get tt_mission_master::WaypointPushRequest :md5sum-) "06f01f715d9c3c308c16c8e55f6d7ad5")
(setf (get tt_mission_master::WaypointPushRequest :datatype-) "tt_mission_master/WaypointPushRequest")
(setf (get tt_mission_master::WaypointPushRequest :definition-)
      "





uint16 start_index
tt_mission_master/Waypoint waypoint

================================================================================
MSG: tt_mission_master/Waypoint
# Waypoint.msg
#

# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
---
bool success
uint32 wp_transfered
")

(setf (get tt_mission_master::WaypointPushResponse :md5sum-) "06f01f715d9c3c308c16c8e55f6d7ad5")
(setf (get tt_mission_master::WaypointPushResponse :datatype-) "tt_mission_master/WaypointPushResponse")
(setf (get tt_mission_master::WaypointPushResponse :definition-)
      "





uint16 start_index
tt_mission_master/Waypoint waypoint

================================================================================
MSG: tt_mission_master/Waypoint
# Waypoint.msg
#

# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
---
bool success
uint32 wp_transfered
")



(provide :tt_mission_master/WaypointPush "06f01f715d9c3c308c16c8e55f6d7ad5")


