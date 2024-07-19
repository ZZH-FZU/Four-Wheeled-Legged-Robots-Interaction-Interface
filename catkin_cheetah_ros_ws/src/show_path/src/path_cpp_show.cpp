#include <fstream>
#include <tf/tf.h>
#include <ros/ros.h>
#include <nav_msgs/Path.h>
#include <std_msgs/String.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <nav_msgs/Odometry.h>
using namespace std;

ros::Subscriber robot_pose_sub_;
ros::Subscriber save_path_sub_ ;
nav_msgs::Path curr_trajectory_;
/*
* 计算两点间距离
*/
double calculateDistanceBetweenPose(const geometry_msgs::PoseStamped& pose1,const geometry_msgs::PoseStamped& pose2)
{
    double d_x = pose2.pose.position.x - pose1.pose.position.x;
    double d_y = pose2.pose.position.y - pose1.pose.position.y;
    return sqrt(d_x* d_x + d_y * d_y);
}
/*
* 保存路径
*/
void savePathToFile(string filename)
{
    ofstream File;
	//保存文本地址
    string filePathName;
    filePathName = "/home/name/path/"+ filename +".csv";

    File.open(filePathName.c_str(),ios::out|ios::trunc);
	//遍历存储路径容器，将路径四元数转为yaw角，写入文本
    for(int i=0;i<curr_trajectory_.poses.size();i++)
    {
        float x = curr_trajectory_.poses[i].pose.position.x;
        float y = curr_trajectory_.poses[i].pose.position.y;

        tf::Quaternion quat;
        tf::quaternionMsgToTF(curr_trajectory_.poses[i].pose.orientation,quat);
        double roll, pitch, yaw;
        tf::Matrix3x3(quat).getRPY(roll,pitch,yaw);
        float th = yaw;
        File<<x<<","<<y<<","<<th<<endl;
    }
    File.close();

}
/*
* 当前位置回调，将间距超过4cm的路径点加入容器
*/
void robotPoseCallback(const geometry_msgs::PoseWithCovarianceStampedConstPtr & curr_pose)
{
    geometry_msgs::PoseStamped current_pose;
    current_pose.header.frame_id = "map";
    current_pose.header.stamp = ros::Time::now();
    current_pose.pose.position = curr_pose->pose.pose.position;
    current_pose.pose.orientation = curr_pose->pose.pose.orientation;
    if(curr_trajectory_.poses.empty())
    {
        curr_trajectory_.poses.push_back(current_pose);
        return ;
    }
    int poses_num = curr_trajectory_.poses.size();
    double dis = calculateDistanceBetweenPose(curr_trajectory_.poses[poses_num - 1],current_pose);
    if(dis > 0.04)
        curr_trajectory_.poses.push_back(current_pose);
}
/*
*  接收路径保存指令，开始保存路径点
*/
void savePathCallback(const std_msgs::String::ConstPtr& msg)
{
    string str_msgs = msg->data.c_str();

    if(str_msgs.compare("end") == 0)
    {
        if(!curr_trajectory_.poses.empty())
        {
            string file_path = "aaa";
            savePathToFile(file_path.c_str());
            curr_trajectory_.poses.clear();
            cout<<"end1!"<<endl;
        }
        cout<<"end2!"<<endl;
    }
}
int main(int argc,char** argv)
{
    ros::init(argc,argv,"save_path_node");
    ros::NodeHandle nh_;

    robot_pose_sub_ = nh_.subscribe("/amcl_pose",1,robotPoseCallback);
    save_path_sub_ = nh_.subscribe("/start_end_record", 1,savePathCallback);
    curr_trajectory_.header.frame_id = "map";
    curr_trajectory_.header.stamp = ros::Time::now();
    ros::spin();
    return 0;
}



