
(cl:in-package :asdf)

(defsystem "quadruped_ctrl-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "commandDes" :depends-on ("_package_commandDes"))
    (:file "_package_commandDes" :depends-on ("_package"))
  ))