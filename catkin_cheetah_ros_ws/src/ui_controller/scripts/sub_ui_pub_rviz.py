#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist

class CommandToTeleop:
    def __init__(self):
        self.sub_command = rospy.Subscriber("/speech", String, self.callback)
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        
        # 键盘映射到机器人运动
        self.moveBindings = {
            '前进': (0.3, 0, 0, 0),  # 前进
            '后退': (-0.3, 0, 0, 0),  # 后退
            '左移': (0, 0.3, 0, 0),  # 左平移
            '右移': (0, -0.3, 0, 0),  # 右平移
            '左转': (0, 0, 0, 0.5),  # 左转头
            '右转': (0, 0, 0, -0.5)  # 右转头
        }

    def callback(self, msg):
        action = msg.data
        if action in self.moveBindings:
            x, y, z, th = self.moveBindings[action]

            twist = Twist()
            twist.linear.x = x
            twist.linear.y = y
            twist.linear.z = 0
            twist.angular.x = th
            twist.angular.y = 0
            twist.angular.z = 0
            self.cmd_vel_pub.publish(twist)

            # 停止机器人移动
            rospy.sleep(1)

            twist = Twist()
            twist.linear.x = 0
            twist.linear.y = 0
            twist.linear.z = 0
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            self.cmd_vel_pub.publish(twist)

        elif action == "停止":
            twist = Twist()
            twist.linear.x = 0
            twist.linear.y = 0
            twist.linear.z = 0
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            self.cmd_vel_pub.publish(twist)
        
        rospy.loginfo(f"Received command: {action}")

def main():
    rospy.init_node("command_to_teleop")
    CommandToTeleop()
    rospy.spin()

if __name__ == '__main__':
    main()

