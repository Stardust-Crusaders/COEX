;; Auto-generated. Do not edit!


(when (boundp 'clever::SetLEDEffect)
  (if (not (find-package "CLEVER"))
    (make-package "CLEVER"))
  (shadow 'SetLEDEffect (find-package "CLEVER")))
(unless (find-package "CLEVER::SETLEDEFFECT")
  (make-package "CLEVER::SETLEDEFFECT"))
(unless (find-package "CLEVER::SETLEDEFFECTREQUEST")
  (make-package "CLEVER::SETLEDEFFECTREQUEST"))
(unless (find-package "CLEVER::SETLEDEFFECTRESPONSE")
  (make-package "CLEVER::SETLEDEFFECTRESPONSE"))

(in-package "ROS")





(defclass clever::SetLEDEffectRequest
  :super ros::object
  :slots (_effect _r _g _b ))

(defmethod clever::SetLEDEffectRequest
  (:init
   (&key
    ((:effect __effect) "")
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _effect (string __effect))
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:effect
   (&optional __effect)
   (if __effect (setq _effect __effect)) _effect)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; string _effect
    4 (length _effect)
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _effect
       (write-long (length _effect) s) (princ _effect s)
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _effect
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _effect (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass clever::SetLEDEffectResponse
  :super ros::object
  :slots (_success _message ))

(defmethod clever::SetLEDEffectResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass clever::SetLEDEffect
  :super ros::object
  :slots ())

(setf (get clever::SetLEDEffect :md5sum-) "044f75c927403b22bd59e8dbf871eabd")
(setf (get clever::SetLEDEffect :datatype-) "clever/SetLEDEffect")
(setf (get clever::SetLEDEffect :request) clever::SetLEDEffectRequest)
(setf (get clever::SetLEDEffect :response) clever::SetLEDEffectResponse)

(defmethod clever::SetLEDEffectRequest
  (:response () (instance clever::SetLEDEffectResponse :init)))

(setf (get clever::SetLEDEffectRequest :md5sum-) "044f75c927403b22bd59e8dbf871eabd")
(setf (get clever::SetLEDEffectRequest :datatype-) "clever/SetLEDEffectRequest")
(setf (get clever::SetLEDEffectRequest :definition-)
      "string effect
uint8 r
uint8 g
uint8 b
---
bool success
string message

")

(setf (get clever::SetLEDEffectResponse :md5sum-) "044f75c927403b22bd59e8dbf871eabd")
(setf (get clever::SetLEDEffectResponse :datatype-) "clever/SetLEDEffectResponse")
(setf (get clever::SetLEDEffectResponse :definition-)
      "string effect
uint8 r
uint8 g
uint8 b
---
bool success
string message

")



(provide :clever/SetLEDEffect "044f75c927403b22bd59e8dbf871eabd")


