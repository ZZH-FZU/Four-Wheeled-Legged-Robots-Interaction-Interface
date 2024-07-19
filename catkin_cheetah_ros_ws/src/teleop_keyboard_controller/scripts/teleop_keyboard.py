#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import sys, select, termios, tty

# 键盘映射到机器人运动
moveBindings = {
    'w': (0.2, 0, 0, 0),  # 前进0.5米
    's': (-0.2, 0, 0, 0),  # 后退0.5米
    'a': (0, 0.2, 0, 0),  # 左平移
    'd': (0, -0.2, 0, 0),  # 右平移
    'q': (0, 0, 0, 0.3),  # 左转头
    'e': (0, 0, 0, -0.3),  # 右转头
}

def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin.fileno(), termios.TCSADRAIN, settings)
    return key

if __name__ == "__main__":
    settings = termios.tcgetattr(sys.stdin)

    rospy.init_node('teleop_keyboard')
    cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    try:
        print("Use WASD keys to control linear movement and QE keys to control angular movement.")
        print("W - Move Forward")
        print("S - Move Backward")
        print("A - Move Left")
        print("D - Move Right")
        print("Q - Turn Left")
        print("E - Turn Right")
        while not rospy.is_shutdown():
            key = getKey()
            if key in moveBindings.keys():
                x, y, z, th = moveBindings[key]

                twist = Twist()
                twist.linear.x = x
                twist.linear.y = y
                twist.linear.z = 0
                twist.angular.x = th
                twist.angular.y = 0
                twist.angular.z = 0
                cmd_vel_pub.publish(twist)

                # 停止机器人移动
                rospy.sleep(1)

                twist = Twist()
                twist.linear.x = 0
                twist.linear.y = 0
                twist.linear.z = 0
                twist.angular.x = 0
                twist.angular.y = 0
                twist.angular.z = 0
                cmd_vel_pub.publish(twist)
            elif key == '\x03':  # Ctrl-C
                break

    except Exception as e:
        print(e)

    finally:
        twist = Twist()
        twist.linear.x = 0
        twist.linear.y = 0
        twist.linear.z = 0
        twist.angular.x = 0
        twist.angular.y = 0
        twist.angular.z = 0
        cmd_vel_pub.publish(twist)

        termios.tcsetattr(sys.stdin.fileno(), termios.TCSADRAIN, settings)

