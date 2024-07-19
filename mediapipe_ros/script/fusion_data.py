#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from std_msgs.msg import String

class FusionNode:
    def __init__(self):
        self.speech_sub = rospy.Subscriber("/speech_part", String, self.callback_speech)
        self.gesture_sub = rospy.Subscriber("/gesture_part", String, self.callback_gesture)
        self.output_pub = rospy.Publisher("/output", String, queue_size=10)

        self.speech_data_received = False
        self.gesture_data_received = False
        self.command_confidence_dict = {}
        self.avg_gesture_confidence = {}

    def callback_gesture(self, data):
        # 收到的数据
        received_data = data.data

        # 分析数据，提取手势和置信度
        pairs = received_data.split('|')
        total_count = len(pairs)

        gesture_dict = {}
        for pair in pairs:
            pair = pair.strip()
            if pair == '':
                continue
            # 处理带括号的格式，如 "None (1.00)"
            parts = pair.split('(')
            gesture = parts[0].strip()
            confidence = float(parts[1].strip(')'))

            if gesture not in gesture_dict:
                gesture_dict[gesture] = []
            gesture_dict[gesture].append(confidence)

        # 计算每种手势的总置信度
        gesture_confidence_sum = {gesture: sum(confidences) for gesture, confidences in gesture_dict.items()}
        # 计算每种手势的平均置信度，除以所有手势的总数，并保留两位小数
        avg_gesture_confidence = {gesture: round(total_confidence / total_count, 2) for gesture, total_confidence in gesture_confidence_sum.items()}

        # 打印手势计算完平均置信度后的输入
        print("手势平均置信度输入: ", avg_gesture_confidence)

        self.gesture_data_received = True
        self.avg_gesture_confidence = avg_gesture_confidence
        self.try_publish_output()

    def callback_speech(self, data):
        # 收到的数据
        received_data = data.data

        # 分析数据，提取指令和置信度
        pairs = received_data.split('|')

        command_confidence_dict = {}
        for pair in pairs:
            pair = pair.strip()
            if pair == '':
                continue
            # 处理带括号的格式，如 "Command (1.00)"
            parts = pair.split('(')
            command = parts[0].strip()
            confidence = float(parts[1].strip(')'))

            if command in command_confidence_dict:
                command_confidence_dict[command].append(confidence)
            else:
                command_confidence_dict[command] = [confidence]

        # 打印语音的输入
        print("语音输入: ", command_confidence_dict)

        self.speech_data_received = True
        self.command_confidence_dict = command_confidence_dict
        self.try_publish_output()

    def try_publish_output(self):
        if self.speech_data_received and self.gesture_data_received:
            # 计算语音和手势的置信度总和
            combined_confidence = {}
            for command, confidences in self.command_confidence_dict.items():
                combined_confidence[command] = sum(confidences)

            for gesture, confidence in self.avg_gesture_confidence.items():
                if gesture in combined_confidence:
                    combined_confidence[gesture] += confidence
                else:
                    combined_confidence[gesture] = confidence

            # 打印两者相加后的输入
            print("指令融合后的置信度: ", combined_confidence)

            # 归一化处理，使得置信度之和等于1
            total_confidence = sum(combined_confidence.values())
            if total_confidence > 0:
                normalized_confidence = {command: confidence / total_confidence for command, confidence in combined_confidence.items()}
            else:
                normalized_confidence = combined_confidence

            # 打印归一化后的置信度
            print("归一化后的置信度: ", normalized_confidence)

            # 找出最高置信度的指令
            highest_confidence = 0.0
            best_command = None

            for command, confidence in normalized_confidence.items():
                if confidence > highest_confidence:
                    highest_confidence = confidence
                    best_command = command

            # 打印最高置信度的指令
            output_data = f"Highest confidence command: {best_command} with normalized confidence: {highest_confidence:.2f}"
            print("最高置信度的指令: ", output_data)

            # 发布输出数据，只发布指令
            self.output_pub.publish(best_command)

            # 清除手势和语音数据
            self.avg_gesture_confidence.clear()
            self.command_confidence_dict.clear()
            self.speech_data_received = False
            self.gesture_data_received = False

if __name__ == '__main__':
    rospy.init_node('fusion_data')
    fusion_node = FusionNode()
    rospy.spin()

