#!/usr/bin/env python
# -*- coding: utf-8 -*-

from email.mime import image
import rospy
import cv2
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
import mediapipe as mp
import math
mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_holistic = mp.solutions.holistic

class image_converter:
    def __init__(self):    
        self.image_pub = rospy.Publisher("holistic", Image, queue_size=1)
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber("/usb_cam/image_raw", Image, self.callback)
        self.cv_image = []
        self.new_image_flag = False
        while not rospy.is_shutdown():
            with mp_holistic.Holistic(min_detection_confidence=0.5,min_tracking_confidence=0.5) as holistic:
                if not self.new_image_flag:
                    continue
                else:
                    self.new_image_flag = False
                    image = self.cv_image
                # To improve performance, optionally mark the image as not writeable to
                # pass by reference.
                image.flags.writeable = False
                image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                results = holistic.process(image)

                # Draw landmark annotation on the image.
                image.flags.writeable = True
                image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)
                mp_drawing.draw_landmarks(
                    image,
                    results.face_landmarks,
                    mp_holistic.FACEMESH_CONTOURS,
                    landmark_drawing_spec=None,
                    connection_drawing_spec=mp_drawing_styles
                    .get_default_face_mesh_contours_style())
                mp_drawing.draw_landmarks(
                    image,
                    results.pose_landmarks,
                    mp_holistic.POSE_CONNECTIONS,
                    landmark_drawing_spec=mp_drawing_styles
                    .get_default_pose_landmarks_style())
                try:
                    img_msg = self.bridge.cv2_to_imgmsg(image, "bgr8")
                    img_msg.header.stamp = rospy.Time.now()
                    self.image_pub.publish(img_msg)
                except CvBridgeError as e:
                    print (e)


    def callback(self,data):
        # convert ROS topic to cv image
        try:
            self.cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
            self.new_image_flag = True
        except CvBridgeError as e:
            print (e)



if __name__ == '__main__':
    try:
        # 初始化ros节点
        rospy.init_node("holistic")
        rospy.loginfo("Starting holistic node")
        image_converter()
        rospy.spin()
    except KeyboardInterrupt:
        print ("Shutting down holistic node.")
        cv2.destroyAllWindows()