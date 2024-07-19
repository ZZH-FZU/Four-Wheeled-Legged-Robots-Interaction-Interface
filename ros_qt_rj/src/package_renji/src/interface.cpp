#include "interface.h"
#include "ui_interface.h"
#include "renjiui.h"
#include "std_msgs/String.h"
#include <sstream>
#include <QPainter>
#include <QDebug>
#include<QThread>
#include <QProcess>
#include <QFile>
//#include"PyThreadStateLock.h"


interface::interface(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::interface)
{
    ui->setupUi(this);

    chatter_pub = nh.advertise<std_msgs::String>("/speech", 1000);

    // subscribe my topic
    speech_sub = nh.subscribe("/speech", 1000, &interface::speechCallback, this);

    //窗口标题
    this->setWindowTitle("人机交互系统可视化界面");
    //设置窗口的icon
    this->setWindowIcon(QIcon(":/new/prefix1/img/logo.jpg"));
    //设置窗口固定大小
    this->setFixedSize(1400,745);

    // 显示日期和时间
    myTimer=new QTimer(this);
    myTimer->start(1000);
    connect(myTimer,SIGNAL(timeout()), this, SLOT(SetTime()));

    // 相机开关
    switchMenu->addAction(ui->Open);
    switchMenu->addAction(ui->Stop);
    ui->readFarme->setMenu(switchMenu);
    timer = new QTimer(this);
    image = new QImage();
    connect(timer,SIGNAL(timeout()),this,SLOT(readFarme()));
    connect(ui->Open,SIGNAL(clicked()),this,SLOT(on_Open_triggered()));
    connect(ui->Stop,SIGNAL(clicked()),this,SLOT(on_Stop_triggered()));

    //sit_down 开关
    switchMenu2->addAction(ui->Sit);
    switchMenu2->addAction(ui->Down);
    ui->pb_sit_down->setMenu(switchMenu2);
    connect(ui->Sit,SIGNAL(clicked()),this,SLOT(on_Sit_triggered()));
    connect(ui->Down,SIGNAL(clicked()),this,SLOT(on_Down_triggered()));

    connect(this, &interface::speechReceived, this, &interface::updateUiSlot);
    qDebug() << "Connections: " << connect(this, &interface::speechReceived, this, &interface::updateUiSlot);
/*
// use to start external windows
    setupUi();
    startExternalProcess();
*/
    textEdit_start_shoushi = new QTextEdit;
    textEdit_start_yuyin = new QTextEdit;
    textEdit_start_simulation = new QTextEdit;
    yuyin_stop = new QTextEdit;

}

interface::~interface()
{
    delete ui;
}

//*******************************external window***********************************************************
/*
void interface::setupUi() {
//    centralWidget = new QWidget(this);
//    setCentralWidget(centralWidget);

    // 在Qt Designer中创建一个QWidget控件，将其命名为 containerWidget
    // 在这里找到它
    containerWidget = findChild<interface*>("containerWidget");
}

void interface::startExternalProcess() {
    qDebug() << "Starting external process...";
    // 启动外部程序
    process = new QProcess(this);
    process->start("nautilus"); // 替换为你想嵌入的程序

    if (!process->waitForStarted()) {
        qWarning() << "无法启动外部程序！";
        return;
    }

    qDebug() << "External process started successfully.";


    // 获取外部窗口句柄并嵌入到 containerWidget 中
    QWindow *externalWindow = QWindow::fromWinId(process->processId());
    QWidget *externalContainer = QWidget::createWindowContainer(externalWindow, containerWidget);


    externalContainer->setGeometry(0, 0, containerWidget->width(), containerWidget->height());

    // 关联窗口关闭事件
    connect(qApp, &QCoreApplication::aboutToQuit, [this]() {
        process->kill();  // 关闭外部程序
    });
}
*/
//*******************************background***********************************************************

void interface::paintEvent(QPaintEvent *event)
{
    //绘制背景图片
    QPainter painter(this);
    QPixmap pix(":/new/prefix1/img/background.png");
    painter.drawPixmap(0,0,this->width(),this->height(),pix);
}

//*******************************time***********************************************************

void interface::SetTime()
{
    QDate dateNow = QDate::currentDate();
    ui->Labdate->setText(QString("日期:%1").arg(dateNow.toString("yyyy年MM月dd日")));

    QTime timeNow = QTime::currentTime();
    ui->Labtime->setText(QString("时间:%1").arg(timeNow.toString()));
}

//*******************************control***********************************************************
void interface::speechCallback(const std_msgs::String::ConstPtr& msg)
{

    qDebug() << "ROS Callback: " << QString::fromStdString(msg->data);
    qDebug() << "Thread ID: " << QThread::currentThreadId();
    // 在这里更新UI，显示接收到的消息
    QString speechText = QString::fromStdString(msg->data);
    // 使用 QMetaObject::invokeMethod 在主线程中调用槽函数
    QMetaObject::invokeMethod(this, "updateUi", Qt::QueuedConnection,
                              Q_ARG(QString, speechText));

}


void interface::updateUi(const QString& speechText)
{
    // 发射信号，通知界面更新
    emit speechReceived(speechText);
}

void interface::updateUiSlot(const QString& speechText)
{
    qDebug() << "updateUiSlot called with: " << speechText;
    // 在这里更新UI，显示接收到的消息
    ui->messageLabel->setText(speechText);
}

/*
void interface::customEvent(QEvent *event)
{
    if (event->type() == QEvent::User)
    {
        CustomEvent *customEvent = static_cast<CustomEvent *>(event);
        updateUi(customEvent->getMessageText());
    }
}
*/
void interface::on_pushButton_13_clicked()
{
    std_msgs::String msg;
    msg.data = "启动";
    chatter_pub.publish(msg);
}


void interface::on_Sit_triggered()
{
    std_msgs::String msg;
    msg.data = "站立";
    chatter_pub.publish(msg);
}

void interface::on_Down_triggered()
{
    std_msgs::String msg;
    msg.data = "趴下";
    chatter_pub.publish(msg);
}

void interface::on_pushButton_forward_clicked()
{
    std_msgs::String msg;
    //    msg.data = ui->lineEdit->text().toStdString();
    msg.data = "前进";
    chatter_pub.publish(msg);
    /*
        ROS_INFO("Published message: %s", msg.data.c_str());
        std::cout << "Published message: " << msg.data << std::endl;
        */
}

void interface::on_back_clicked()
{
    std_msgs::String msg;
    msg.data = "后退";
    chatter_pub.publish(msg);
}


void interface::on_pushButton_3_clicked()
{
    std_msgs::String msg;
    msg.data = "左转";
    chatter_pub.publish(msg);
}


void interface::on_turn_right_clicked()
{
    std_msgs::String msg;
    msg.data = "右转";
    chatter_pub.publish(msg);
}

void interface::on_pushButton_7_clicked()
{
    std_msgs::String msg;
    msg.data = "左移";
    chatter_pub.publish(msg);
}

void interface::on_pushButton_8_clicked()
{
    std_msgs::String msg;
    msg.data = "右移";
    chatter_pub.publish(msg);
}


void interface::on_pushButton_2_clicked()
{
//    system("gnome-terminal -- bash -c \"rosrun ui_controller sub_ui_pub_rviz.py\"");

    QProcess *process = new QProcess(this);

    // 根据你使用的终端选择合适的命令，这里使用的是gnome-terminal
    // 如果你使用的是其他终端（如xterm或konsole），请相应修改命令
     QString command = "gnome-terminal -- bash -c \"sleep 2; source /opt/ros/noetic/setup.bash; source ~/catkin_cheetah_ros_ws/devel/setup.bash; rosrun ui_controller sub_ui_pub_rviz.py; echo Press Enter to close this window...; read\"";
    process->start(command);

}



void interface::on_shoushi_clicked()
{
    textEdit_start_shoushi->clear();

    QString exec = "gnome-terminal -- roslaunch mediapipe_ros rgb_camera.launch device:=video0\n"
                   "sleep 3s\n"
                   "gnome-terminal -- rqt_image_view";
    textEdit_start_shoushi->append(exec);

    // 获取TextEdit中的文本
    QString scriptText = textEdit_start_shoushi->toPlainText();

    // 获取应用程序的目录
    QString appDir = QCoreApplication::applicationDirPath();

    // 创建.sh文件（使用相对路径）
    QFile scriptFile(appDir + "/start_shoushi.sh");
    if (scriptFile.open(QIODevice::WriteOnly | QIODevice::Text))
    {
        QTextStream out(&scriptFile);

        // 将TextEdit中的文本写入.sh文件
        out << scriptText;

        // 关闭文件
        scriptFile.close();

        // 设置文件执行权限
        QFile::setPermissions(appDir + "/start_shoushi.sh", QFile::ReadOwner | QFile::WriteOwner | QFile::ExeOwner);


        // 构建QProcess对象并执行.sh文件（使用相对路径）
        QProcess *process = new QProcess(this);

        if (process->state() != QProcess::NotRunning) {
            process->terminate();
            process->waitForFinished();
        }

        // 启动新的进程
        if (process->startDetached("/bin/sh", QStringList() << appDir + "/start_shoushi.sh")) {
            qDebug() << "Script file path: " << appDir + "/start_shoushi.sh";
            qDebug() << "Process started successfully.";
        } else {
            qDebug() << "Error starting process!";
        }

        qDebug() << "Script file path: " << appDir + "/start_renji.sh";
    }

}


void interface::on_yuyin_clicked()
{
    textEdit_start_yuyin->clear();

//    QString exec = "gnome-terminal -- bash -c \"rosrun demo_py pub.py && echo $! > yuyin_pid.txt\" \n";
    QString exec = "gnome-terminal -- bash -c \"rosrun speech_recognition infer.py\" \n";

    textEdit_start_yuyin->append(exec);

    // 获取TextEdit中的文本
    QString scriptText = textEdit_start_yuyin->toPlainText();

    // 获取应用程序的目录
    QString appDir = QCoreApplication::applicationDirPath();

    // 创建.sh文件（使用相对路径）
    QFile scriptFile(appDir + "/start_yuyin.sh");
    if (scriptFile.open(QIODevice::WriteOnly | QIODevice::Text))
    {
        QTextStream out(&scriptFile);

        // 将TextEdit中的文本写入.sh文件
        out << scriptText;

        // 关闭文件
        scriptFile.close();

        // 设置文件执行权限
        QFile::setPermissions(appDir + "/start_yuyin.sh", QFile::ReadOwner | QFile::WriteOwner | QFile::ExeOwner);


        // 构建QProcess对象并执行.sh文件（使用相对路径）
        QProcess *process = new QProcess(this);

        if (process->state() != QProcess::NotRunning) {
            process->terminate();
            process->waitForFinished();
        }

        // 启动新的进程
        if (process->startDetached("/bin/sh", QStringList() << appDir + "/start_yuyin.sh")) {
            qDebug() << "Script file path: " << appDir + "/start_yuyin.sh";
            qDebug() << "Process started successfully.";
        } else {
            qDebug() << "Error starting process!";
        }

        qDebug() << "Script file path: " << appDir + "/start_yuyin.sh";
    }
}


//*******************************camera***********************************************************

void interface::pb_sit_down()
{

}

void interface::on_Open_triggered()
{
    cap.open(0);
    timer->start(33);
}


void interface::on_Stop_triggered()
{
    // 停止读取数据。
    timer->stop();
    cap.release();
    ui->cameraView->clear();
}


void interface::readFarme()
{
    cap.read(src_image);

    QImage imag = MatImageToQt(src_image);
    ui->cameraView->setPixmap(QPixmap::fromImage(imag));
    // 自适应label窗口
    ui->cameraView->setScaledContents(true);
}

//Mat转成QImage
QImage interface::MatImageToQt(const cv::Mat &src)
{
    //CV_8UC1 8位无符号的单通道---灰度图片
    if(src.type() == CV_8UC1)
    {
        //使用给定的大小和格式构造图像
        //QImage(int width, int height, Format format)
        QImage qImage(src.cols,src.rows,QImage::Format_Indexed8);
        //扩展颜色表的颜色数目
        qImage.setColorCount(256);

        //在给定的索引设置颜色
        for(int i = 0; i < 256; i ++)
        {
            //得到一个黑白图
            qImage.setColor(i,qRgb(i,i,i));
        }
        //复制输入图像,data数据段的首地址
        uchar *pSrc = src.data;
        //
        for(int row = 0; row < src.rows; row ++)
        {
            //遍历像素指针
            uchar *pDest = qImage.scanLine(row);
            //从源src所指的内存地址的起始位置开始拷贝n个
            //字节到目标dest所指的内存地址的起始位置中
            memcmp(pDest,pSrc,src.cols);
            //图像层像素地址
            pSrc += src.step;
        }
        return qImage;
    }
    //为3通道的彩色图片
    else if(src.type() == CV_8UC3)
    {
        //得到图像的的首地址
        const uchar *pSrc = (const uchar*)src.data;
        //以src构造图片
        QImage qImage(pSrc,src.cols,src.rows,src.step,QImage::Format_RGB888);
        //在不改变实际图像数据的条件下，交换红蓝通道
        return qImage.rgbSwapped();
    }
    //四通道图片，带Alpha通道的RGB彩色图像
    else if(src.type() == CV_8UC4)
    {
        const uchar *pSrc = (const uchar*)src.data;
        QImage qImage(pSrc, src.cols, src.rows, src.step, QImage::Format_ARGB32);
        //返回图像的子区域作为一个新图像
        return qImage.copy();
    }
    else
    {
        return QImage();
    }
}


void interface::on_stop_yuyin_clicked()
{
    yuyin_stop->clear();

    QString exec = "if [ -f \"yuyin_pid.txt\" ]; then \n"
                   "pid=$(cat yuyin_pid.txt)\n"
                   "pkill -P $pid \n"
                   "rm yuyin_pid.txt \n"
                   "else\n"
                   "echo \"process ID file not found.\" \n"
                   "fi";
    yuyin_stop->append(exec);

    // 获取TextEdit中的文本
    QString scriptText = yuyin_stop->toPlainText();

    // 获取应用程序的目录
    QString appDir = QCoreApplication::applicationDirPath();

    // 创建.sh文件（使用相对路径）
    QFile scriptFile(appDir + "/stop_yuyin.sh");
    if (scriptFile.open(QIODevice::WriteOnly | QIODevice::Text))
    {
        QTextStream out(&scriptFile);

        // 将TextEdit中的文本写入.sh文件
        out << scriptText;

        // 关闭文件
        scriptFile.close();

        // 设置文件执行权限
        QFile::setPermissions(appDir + "/stop_yuyin.sh", QFile::ReadOwner | QFile::WriteOwner | QFile::ExeOwner);


        // 构建QProcess对象并执行.sh文件（使用相对路径）
        QProcess *process = new QProcess(this);

        if (process->state() != QProcess::NotRunning) {
            process->terminate();
            process->waitForFinished();
        }

        // 启动新的进程
        if (process->startDetached("/bin/sh", QStringList() << appDir + "/stop_yuyin.sh")) {
            qDebug() << "Script file path: " << appDir + "/stop_yuyin.sh";
            qDebug() << "Process started successfully.";
        } else {
            qDebug() << "Error starting process!";
        }

        qDebug() << "Script file path: " << appDir + "/stop_yuyin.sh";
    }
}

void interface::on_pushButton_4_clicked()
{
    system("rosrun mediapipe_ros fusion_data");
}

