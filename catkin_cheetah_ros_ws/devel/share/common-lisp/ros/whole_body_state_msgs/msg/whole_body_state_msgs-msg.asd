
(cl:in-package :asdf)

(defsystem "whole_body_state_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CentroidalState" :depends-on ("_package_CentroidalState"))
    (:file "_package_CentroidalState" :depends-on ("_package"))
    (:file "ContactState" :depends-on ("_package_ContactState"))
    (:file "_package_ContactState" :depends-on ("_package"))
    (:file "JointCommand" :depends-on ("_package_JointCommand"))
    (:file "_package_JointCommand" :depends-on ("_package"))
    (:file "JointState" :depends-on ("_package_JointState"))
    (:file "_package_JointState" :depends-on ("_package"))
    (:file "WholeBodyController" :depends-on ("_package_WholeBodyController"))
    (:file "_package_WholeBodyController" :depends-on ("_package"))
    (:file "WholeBodyState" :depends-on ("_package_WholeBodyState"))
    (:file "_package_WholeBodyState" :depends-on ("_package"))
    (:file "WholeBodyTrajectory" :depends-on ("_package_WholeBodyTrajectory"))
    (:file "_package_WholeBodyTrajectory" :depends-on ("_package"))
  ))