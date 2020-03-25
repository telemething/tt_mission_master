;; Auto-generated. Do not edit!


(when (boundp 'tt_mission_master::StartMission)
  (if (not (find-package "TT_MISSION_MASTER"))
    (make-package "TT_MISSION_MASTER"))
  (shadow 'StartMission (find-package "TT_MISSION_MASTER")))
(unless (find-package "TT_MISSION_MASTER::STARTMISSION")
  (make-package "TT_MISSION_MASTER::STARTMISSION"))
(unless (find-package "TT_MISSION_MASTER::STARTMISSIONREQUEST")
  (make-package "TT_MISSION_MASTER::STARTMISSIONREQUEST"))
(unless (find-package "TT_MISSION_MASTER::STARTMISSIONRESPONSE")
  (make-package "TT_MISSION_MASTER::STARTMISSIONRESPONSE"))

(in-package "ROS")





(defclass tt_mission_master::StartMissionRequest
  :super ros::object
  :slots (_arg1 ))

(defmethod tt_mission_master::StartMissionRequest
  (:init
   (&key
    ((:arg1 __arg1) "")
    )
   (send-super :init)
   (setq _arg1 (string __arg1))
   self)
  (:arg1
   (&optional __arg1)
   (if __arg1 (setq _arg1 __arg1)) _arg1)
  (:serialization-length
   ()
   (+
    ;; string _arg1
    4 (length _arg1)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _arg1
       (write-long (length _arg1) s) (princ _arg1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _arg1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arg1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tt_mission_master::StartMissionResponse
  :super ros::object
  :slots (_result ))

(defmethod tt_mission_master::StartMissionResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tt_mission_master::StartMission
  :super ros::object
  :slots ())

(setf (get tt_mission_master::StartMission :md5sum-) "e90883d443fcd8a6f0c6255a48a3f690")
(setf (get tt_mission_master::StartMission :datatype-) "tt_mission_master/StartMission")
(setf (get tt_mission_master::StartMission :request) tt_mission_master::StartMissionRequest)
(setf (get tt_mission_master::StartMission :response) tt_mission_master::StartMissionResponse)

(defmethod tt_mission_master::StartMissionRequest
  (:response () (instance tt_mission_master::StartMissionResponse :init)))

(setf (get tt_mission_master::StartMissionRequest :md5sum-) "e90883d443fcd8a6f0c6255a48a3f690")
(setf (get tt_mission_master::StartMissionRequest :datatype-) "tt_mission_master/StartMissionRequest")
(setf (get tt_mission_master::StartMissionRequest :definition-)
      "string arg1
---
string result
")

(setf (get tt_mission_master::StartMissionResponse :md5sum-) "e90883d443fcd8a6f0c6255a48a3f690")
(setf (get tt_mission_master::StartMissionResponse :datatype-) "tt_mission_master/StartMissionResponse")
(setf (get tt_mission_master::StartMissionResponse :definition-)
      "string arg1
---
string result
")



(provide :tt_mission_master/StartMission "e90883d443fcd8a6f0c6255a48a3f690")


