//头文件部分
#include <sstream>
#include "ros/ros.h"
/*"ros/ros.h 是一个实用的头文件，它引用了 ROS 系统中大部分常用的头文件。"地址在 /opt/ros/noetic/include/ros/" */
#include "std_msgs/String.h"
/* "std_msgs"是一个消息类型依赖包，此处要传输string类型数据，需要包含该数据类型的头文件String.h，就在这个依赖包里 */
#include "renjiui.h"
#include <QApplication>


#include <QThread>
#include <QCoreApplication>

// 新建一个类继承自 QThread
class RosThread : public QThread
{
public:
    void run() override
    {
        // 在这里执行ROS节点的循环
        ros::spin();
    }
};

int main(int argc, char **argv)
{
    QApplication a(argc, argv);
    renjiui ui1;
    ui1.show();


// dog master
//   setenv("ROS_MASTER_URI", "http://192.168.1.105:11311", 1);
//   setenv("ROS_IP", "192.168.1.5", 1);
   ros::init(argc, argv, "talker_interaction_ui");


//   ros::init(argc, argv, "talker", ros::init_options::AnonymousName);  // ni min jie dian



// localhost master
    // printf("before talker\r\n");
//     ros::init(argc, argv, "talker");
    // printf("after talker\r\n");



    // 创建并启动一个ROS节点循环的线程
    RosThread rosThread;
    rosThread.start();

    // 启动Qt应用程序的事件循环
    int result = a.exec();

    // 等待ROS节点循环线程结束
    rosThread.quit();
    rosThread.wait();

    return result;
}
