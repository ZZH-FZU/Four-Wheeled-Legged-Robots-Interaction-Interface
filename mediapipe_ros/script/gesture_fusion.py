#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import cv2
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from std_msgs.msg import String
import mediapipe as mp
import math
import threading
import time
from collections import deque

mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands

class image_converter:
    def __init__(self):    
        self.image_pub = rospy.Publisher("hands", Image, queue_size=1)
        self.ges_pub = rospy.Publisher("gesture_part", String, queue_size=10)
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber("/usb_cam/image_raw", Image, self.callback)
        self.cv_image = []
        self.new_image_flag = False
        self.gesture_queue = deque()
        self.lock = threading.Lock()
        self.timer = threading.Timer(2.0, self.publish_gestures)
        self.timer.start()
        while not rospy.is_shutdown():
            with mp_hands.Hands(model_complexity=0, min_detection_confidence=0.5, min_tracking_confidence=0.5) as hands:
                if not self.new_image_flag:
                    continue
                else:
                    self.new_image_flag = False
                    image = self.cv_image
                    gesture_str = ''
                    # image = cv2.flip(image, 1)
                    # To improve performance, optionally mark the image as not writeable to
                    # pass by reference.
                    image.flags.writeable = False
                    image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                    results = hands.process(image)

                    # Draw the hand annotations on the image.
                    image.flags.writeable = True
                    image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)
                    if results.multi_hand_landmarks:
                        gesture_counter = 1
                        for hand_landmarks, handedness in zip(results.multi_hand_landmarks, results.multi_handedness):
                            mp_drawing.draw_landmarks(
                                image,
                                hand_landmarks,
                                mp_hands.HAND_CONNECTIONS,
                                mp_drawing_styles.get_default_hand_landmarks_style(),
                                mp_drawing_styles.get_default_hand_connections_style())
                            hand_local = []
                            for i in range(21):
                                x = hand_landmarks.landmark[i].x * image.shape[1]
                                y = hand_landmarks.landmark[i].y * image.shape[0]
                                hand_local.append((x, y))
                            if hand_local:
                                angle_list = self.hand_angle(hand_local)
                                gesture_str = self.h_gesture(angle_list)
                                confidence = handedness.classification[0].score
                                text = f"{gesture_str} ({confidence:.2f})"
                                cv2.putText(image, text, (200 * gesture_counter, 50), 0, 2.0, (0, 0, 255), 5)
                                gesture_counter += 1
                                with self.lock:
                                    self.gesture_queue.append((gesture_str, confidence))
                try:
                    img_msg = self.bridge.cv2_to_imgmsg(image, "bgr8")
                    img_msg.header.stamp = rospy.Time.now()
                    self.image_pub.publish(img_msg)
                except CvBridgeError as e:
                    rospy.logerr(f"CvBridge Error: {e}")

    def callback(self, data):
        # convert ROS topic to cv image
        try:
            self.cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
            self.new_image_flag = True
        except CvBridgeError as e:
            rospy.logerr(f"CvBridge Error: {e}")

    def vector_2d_angle(self, v1, v2):
        '''
            求解二维向量的角度
        '''
        v1_x = v1[0]
        v1_y = v1[1]
        v2_x = v2[0]
        v2_y = v2[1]
        try:
            angle_ = math.degrees(math.acos((v1_x * v2_x + v1_y * v2_y) / (((v1_x**2 + v1_y**2)**0.5) * ((v2_x**2 + v2_y**2)**0.5))))
        except:
            angle_ = 65535.
        if angle_ > 180.:
            angle_ = 65535.
        return angle_

    def hand_angle(self, hand_):
        '''
            获取对应手相关向量的二维角度,根据角度确定手势
        '''
        angle_list = []
        #---------------------------- thumb 大拇指角度
        angle_ = self.vector_2d_angle(
            ((int(hand_[0][0]) - int(hand_[2][0])), (int(hand_[0][1]) - int(hand_[2][1]))),
            ((int(hand_[3][0]) - int(hand_[4][0])), (int(hand_[3][1]) - int(hand_[4][1])))
        )
        angle_list.append(angle_)
        #---------------------------- index 食指角度
        angle_ = self.vector_2d_angle(
            ((int(hand_[0][0]) - int(hand_[6][0])), (int(hand_[0][1]) - int(hand_[6][1]))),
            ((int(hand_[7][0]) - int(hand_[8][0])), (int(hand_[7][1]) - int(hand_[8][1])))
        )
        angle_list.append(angle_)
        #---------------------------- middle 中指角度
        angle_ = self.vector_2d_angle(
            ((int(hand_[0][0]) - int(hand_[10][0])), (int(hand_[0][1]) - int(hand_[10][1]))),
            ((int(hand_[11][0]) - int(hand_[12][0])), (int(hand_[11][1]) - int(hand_[12][1])))
        )
        angle_list.append(angle_)
        #---------------------------- ring 无名指角度
        angle_ = self.vector_2d_angle(
            ((int(hand_[0][0]) - int(hand_[14][0])), (int(hand_[0][1]) - int(hand_[14][1]))),
            ((int(hand_[15][0]) - int(hand_[16][0])), (int(hand_[15][1]) - int(hand_[16][1])))
        )
        angle_list.append(angle_)
        #---------------------------- pink 小拇指角度
        angle_ = self.vector_2d_angle(
            ((int(hand_[0][0]) - int(hand_[18][0])), (int(hand_[0][1]) - int(hand_[18][1]))),
            ((int(hand_[19][0]) - int(hand_[20][0])), (int(hand_[19][1]) - int(hand_[20][1])))
        )
        angle_list.append(angle_)
        return angle_list

    def h_gesture(self, angle_list):
        '''
            # 二维约束的方法定义手势
            # fist five gun love one six three thumbup yeah
        '''
        thr_angle_curve = 49.
        thr_angle_straighten = 65.0
        gesture_str = None
        if 65535. not in angle_list:
            if (angle_list[0] > thr_angle_straighten) and (angle_list[1] < thr_angle_curve) and (angle_list[2] > thr_angle_straighten) and (angle_list[3] > thr_angle_straighten) and (angle_list[4] > thr_angle_straighten):
                gesture_str = "前进"
            elif (angle_list[0] > thr_angle_straighten) and (angle_list[1] < thr_angle_curve) and (angle_list[2] < thr_angle_curve) and (angle_list[3] > thr_angle_straighten) and (angle_list[4] > thr_angle_straighten):
                gesture_str = "后退"
            elif (angle_list[0] > thr_angle_straighten) and (angle_list[1] < thr_angle_curve) and (angle_list[2] < thr_angle_curve) and (angle_list[3] < thr_angle_curve) and (angle_list[4] > thr_angle_straighten):
                gesture_str = "左转"
            elif (angle_list[0] > thr_angle_straighten) and (angle_list[1] > thr_angle_straighten) and (angle_list[2] < thr_angle_curve) and (angle_list[3] < thr_angle_curve) and (angle_list[4] < thr_angle_curve):
                gesture_str = "左转"
            elif (angle_list[0] > thr_angle_straighten) and (angle_list[1] < thr_angle_curve) and (angle_list[2] < thr_angle_curve) and (angle_list[3] < thr_angle_curve) and (angle_list[4] < thr_angle_curve):
                gesture_str = "右转"
            elif (angle_list[0] < thr_angle_curve) and (angle_list[1] < thr_angle_curve) and (angle_list[2] < thr_angle_curve) and (angle_list[3] < thr_angle_curve) and (angle_list[4] < thr_angle_curve):
                gesture_str = "左移"
            elif (angle_list[0] < thr_angle_curve) and (angle_list[1] > thr_angle_straighten) and (angle_list[2] > thr_angle_straighten) and (angle_list[3] > thr_angle_straighten) and (angle_list[4] < thr_angle_curve):
                gesture_str = "右移"
            elif (angle_list[0] < thr_angle_curve) and (angle_list[1] > thr_angle_straighten) and (angle_list[2] > thr_angle_straighten) and (angle_list[3] > thr_angle_straighten) and (angle_list[4] > thr_angle_straighten):
                gesture_str = "停止"
            elif (angle_list[0] > thr_angle_straighten) and (angle_list[1] > thr_angle_straighten) and (angle_list[2] < thr_angle_curve) and (angle_list[3] > thr_angle_straighten) and (angle_list[4] > thr_angle_straighten):
                gesture_str = "启动"
        return gesture_str

    def publish_gestures(self):
        while not rospy.is_shutdown():
            with self.lock:
                if self.gesture_queue:
                    combined_gestures = []
                    while self.gesture_queue:
                        gesture, confidence = self.gesture_queue.popleft()
                        combined_gestures.append(f"{gesture} ({confidence:.2f})")
                    gesture_str = " | ".join(combined_gestures)
                    # 使用 utf-8 编码的字符串发布消息
                    rospy.loginfo(gesture_str)
                    self.ges_pub.publish(gesture_str)
            time.sleep(2)

if __name__ == '__main__':
    try:
        # 初始化ros节点
        rospy.init_node("pose")
        rospy.loginfo("Starting pose node")
        image_converter()
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down pose node.")
        cv2.destroyAllWindows()

