
(cl:in-package :asdf)

(defsystem "quadruped_ctrl-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "QuadrupedCmd" :depends-on ("_package_QuadrupedCmd"))
    (:file "_package_QuadrupedCmd" :depends-on ("_package"))
  ))