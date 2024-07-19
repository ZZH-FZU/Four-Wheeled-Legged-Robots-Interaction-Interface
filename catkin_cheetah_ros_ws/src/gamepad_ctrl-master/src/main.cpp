#include <geometry_msgs/Twist.h>
#include <ros/ros.h>
#include <sensor_msgs/Joy.h>

ros::Subscriber gamepadDataSub;
ros::Publisher cmdVelPub, cmdPosePub;

void SubGamepadData(const sensor_msgs::Joy& msg) {
  geometry_msgs::Twist cmdVel, cmdPose;
  cmdVel.linear.x = msg.axes[1];
  cmdVel.linear.y = msg.axes[0];
  cmdVel.angular.x = -msg.axes[3];
  cmdVel.angular.y = msg.axes[4];
  cmdVelPub.publish(cmdVel);

  if (msg.buttons[3] > 0.1) {  // Y
    cmdPose.angular.x = 1;
  } else if (msg.buttons[0] > 0.1) {  // A
    cmdPose.angular.x = -1;
  } else {
    cmdPose.angular.x = 0;
  }
  if (msg.buttons[1] > 0.1) {  // Y
    cmdPose.angular.y = 1;
  } else if (msg.buttons[2] > 0.1) {  // A
    cmdPose.angular.y = -1;
  } else {
    cmdPose.angular.y = 0;
  }
  if (msg.buttons[4] > 0.1) { // Left
    cmdPose.angular.z = 1;
  } else if (msg.buttons[5] > 0.1) { // Right
    cmdPose.angular.z = -1;
  } else {
    cmdPose.angular.z = 0;
  }
  cmdPosePub.publish(cmdPose);
}

int main(int argc, char** argv) {
  ROS_INFO("start quadruped_ctrl node");

  ros::init(argc, argv, "gamepad_ctrl");
  ros::NodeHandle n;
  ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME,
                                 ros::console::levels::Info);

  gamepadDataSub = n.subscribe("/joy", 10, &SubGamepadData);
  cmdVelPub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
  cmdPosePub = n.advertise<geometry_msgs::Twist>("/cmd_pose", 10);

  ros::spin();
  return 0;
}