#ifndef INTERFACE_H
#define INTERFACE_H

#include <QMainWindow>
#include<QTime>
#include<QTimer>
#include<QLabel>
#include<QMenu>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <QtWidgets/QMainWindow>
#include <QEvent>
#include <QWindow>
#include <QWidget>
#include <QProcess>
#include <QTextEdit>
#include "opencv2/opencv.hpp"
#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"

using namespace cv;
using namespace std;

namespace Ui {
class interface;
}

class interface : public QMainWindow
{
    Q_OBJECT

public:
    explicit interface(QWidget *parent = nullptr);
    ~interface();

    ros::NodeHandle nh;
    ros::Publisher chatter_pub;
    ros::Subscriber speech_sub;



//    static void speechCallback(const std_msgs::String::ConstPtr& msg);

    //Mat转QLabel
    QImage MatImageToQt(const cv::Mat &src);

protected:
    virtual void paintEvent(QPaintEvent *event);

private slots:

    // 显示动态时间
    void SetTime();

    void readFarme();

    void pb_sit_down();

    void on_Sit_triggered();

    void on_Down_triggered();

    void on_pushButton_forward_clicked();

    void on_Open_triggered();

    void on_Stop_triggered();

    void on_shoushi_clicked();

    void on_yuyin_clicked();

    void on_back_clicked();

    void on_pushButton_3_clicked();

    void on_turn_right_clicked();

    void speechCallback(const std_msgs::String::ConstPtr& msg);

    void updateUi(const QString& speechText);

    void updateUiSlot(const QString& speechText);

//    void customEvent(QEvent *event);

//    void updateMessage();


    void on_stop_yuyin_clicked();



//    void setupUi();

//    void startExternalProcess();

    void on_pushButton_13_clicked();


    void on_pushButton_7_clicked();

    void on_pushButton_8_clicked();

    void on_pushButton_2_clicked();

    void on_pushButton_4_clicked();

private:
    Ui::interface *ui;
    QTimer *myTimer;
    QTimer *timer;

    // camera
    QMenu *switchMenu = new QMenu(this);
    cv::VideoCapture cap;
    cv::Mat src_image;
    QImage *image;
    QMenu *switchMenu2 = new QMenu(this);

    QTextEdit* textEdit_start_shoushi;
    QTextEdit* textEdit_start_yuyin;
    QTextEdit* textEdit_start_simulation;
    QTextEdit* yuyin_stop;



//    QWidget *centralWidget;
//    QWidget *containerWidget;
//    QProcess *process;



//    QLabel *messageLabel;

signals:
    // 声明一个信号，该信号在ROS回调函数中被触发
    void speechReceived(const QString& speechText);

};/*
class CustomEvent : public QEvent
{
public:
    CustomEvent(const QString& text) : QEvent(QEvent::User), messageText(text) {}
    QString getMessageText() const { return messageText; }

private:
    QString messageText;
};
*/

#endif // INTERFACE_H
