#!/usr/bin/env python

import rospy
from visualization_msgs.msg import Marker

def add_cylinders():
    rospy.init_node('add_cylinders_node', anonymous=True)
    marker_pub = rospy.Publisher('visualization_marker', Marker, queue_size=10)
    rospy.sleep(1)  # 等待RViz启动

    # 定义圆柱体的位置
    positions = [
        (0.0, -0.4), (1.5, -0.4), (2, -2), (1, -3), (0, -1.5)
    ]

    for i, (x, y) in enumerate(positions):
        marker = Marker()
        marker.header.frame_id = "world"  # 确保frame_id与RViz中的固定帧一致
        marker.header.stamp = rospy.Time.now()
        marker.ns = "my_namespace"
        marker.id = i
        marker.type = Marker.CYLINDER
        marker.action = Marker.ADD
        marker.pose.position.x = x
        marker.pose.position.y = y
        marker.pose.position.z = 0.1  # 固定Z坐标
        marker.pose.orientation.x = 0.0
        marker.pose.orientation.y = 0.0
        marker.pose.orientation.z = 0.0
        marker.pose.orientation.w = 1.0
        marker.scale.x = 0.15  # 缩小圆柱体
        marker.scale.y = 0.2
        marker.scale.z = 0.4
        marker.color.a = 1.0
        marker.color.r = 1.0
        marker.color.g = 0.0
        marker.color.b = 0.0

        marker_pub.publish(marker)
        rospy.sleep(0.1)  # 确保所有marker都被发布

if __name__ == '__main__':
    try:
        add_cylinders()
    except rospy.ROSInterruptException:
        pass

