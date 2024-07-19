#include <ros/ros.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/String.h>
#include <tf/tf.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/Twist.h>
#include <ros/time.h>
#include <istream>
#include <sstream>
#include <fstream>
#include <string>
#include <vector>
#include <tf/tf.h>
using namespace std;

/**
 * 字符串分割
*/
std::vector<std::string> split(const std::string &str, const std::string &pattern) {
    char *strc = new char[strlen(str.c_str()) + 1];
    strcpy(strc, str.c_str()); // string转换成C-string
    std::vector<std::string> res;
    char *temp = strtok(strc, pattern.c_str());
    while (temp != NULL) {
        res.push_back(std::string(temp));
        temp = strtok(NULL, pattern.c_str());
    }
    delete[] strc;
    return res;
}

int main(int argc,char** argv)
{
    ros::init(argc,argv,"path_pub");
    ros::NodeHandle n;
    ros::Rate r(10);
    ros::Publisher path_pub = n.advertise<nav_msgs::Path>("/path_pub",10);
    ros::Publisher path_end_pub = n.advertise<geometry_msgs::PointStamped>("/path_end_point",10);
    ros::Publisher path_start_pub = n.advertise<geometry_msgs::PointStamped>("/path_start_point",10);

    nav_msgs::Path nav_path;
    nav_path.header.frame_id= "/map";
    nav_path.header.stamp = ros::Time::now();
    geometry_msgs::PoseStamped path_pose;


   //读取CSV文件
    std::ifstream csv_data("path/aaa.csv",std::ios::in);
    if(!csv_data)
    {
        std::cout<<"open .csv failed"<<std::endl;
        ROS_ERROR(" .csv  doesn't exisit ");
        std::exit(1);
    }
    geometry_msgs::Quaternion quat;
    std::string line;
    int line_num = 0;
    std::vector<std::string> strbuf;

    while(ros::ok())
    {
        while(std::getline(csv_data,line))
        {
            // std::cout<<line<<std::endl;
            path_pose.header.frame_id = "/map";
            path_pose.header.stamp =ros::Time::now();
            path_pose.header.seq = 0;
            line_num++;
            strbuf = split(line, ",");
            path_pose.pose.position.x = atof(strbuf[0].c_str());
            path_pose.pose.position.y = atof(strbuf[1].c_str());
            path_pose.pose.position.z = 0.0;
            /*
            float yaw = atof(strbuf[2].c_str());

            quat = tf::createQuaternionMsgFromYaw(yaw);

            path_pose.pose.orientation.x = quat.x;
            path_pose.pose.orientation.y = quat.y;
            path_pose.pose.orientation.z = quat.z;
            path_pose.pose.orientation.w = quat.w;
            */
            path_pose.pose.orientation.z = std::sin(atof(strbuf[1].c_str())/2.0);
            path_pose.pose.orientation.w = std::cos(atof(strbuf[1].c_str())/2.0);
            nav_path.poses.push_back(path_pose);
        }
        path_pub.publish(nav_path);
        ros::Duration(1).sleep();
        path_end_pub.publish(nav_path.poses[nav_path.poses.size()-1]);
        // std::cout<<"----2-----"<<std::endl;
        path_start_pub.publish(nav_path.poses[0]);

        ros::spinOnce();
        r.sleep();
    }

    return 0;

}

