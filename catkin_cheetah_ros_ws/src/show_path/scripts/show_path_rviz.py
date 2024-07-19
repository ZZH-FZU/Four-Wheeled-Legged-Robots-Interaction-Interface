#!/usr/bin/env python

import rospy
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped
from tf2_ros import TransformListener, Buffer, LookupException, ConnectivityException, ExtrapolationException

class PathTracker:
    def __init__(self):
        rospy.init_node('path_tracker', anonymous=True)
        
        self.path_pub = rospy.Publisher('/robot_path', Path, queue_size=10)
        self.tf_buffer = Buffer()
        self.tf_listener = TransformListener(self.tf_buffer)
        
        self.path = Path()
        self.path.header.frame_id = "world"
        
        self.rate = rospy.Rate(10.0)  # 10 Hz
        self.track_path()

    def track_path(self):
        while not rospy.is_shutdown():
            try:
                # 获取 world 到 body 的变换
                trans = self.tf_buffer.lookup_transform('world', 'body', rospy.Time(0), rospy.Duration(1.0))
                
                # 创建并填充 PoseStamped 消息
                pose = PoseStamped()
                pose.header.frame_id = 'world'
                pose.header.stamp = rospy.Time.now()
                
                pose.pose.position.x = trans.transform.translation.x
                pose.pose.position.y = trans.transform.translation.y
                pose.pose.position.z = trans.transform.translation.z
                pose.pose.orientation = trans.transform.rotation
                
                # 直接添加到路径中
                self.path.poses.append(pose)
                self.path.header.stamp = rospy.Time.now()
                self.path_pub.publish(self.path)

            except (LookupException, ConnectivityException, ExtrapolationException) as e:
                rospy.logwarn("TF Exception: {}".format(e))
            
            self.rate.sleep()

if __name__ == '__main__':
    try:
        PathTracker()
    except rospy.ROSInterruptException:
        pass

