#include "renjiui.h"
#include "ui_renjiui.h"
#include "std_msgs/String.h"
#include <sstream>
#include <QPainter>
#include "interface.h"

renjiui::renjiui(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::renjiui)
{
    ui->setupUi(this);

    //窗口标题
    this->setWindowTitle("人机交互系统可视化界面");
    //设置窗口的icon
    this->setWindowIcon(QIcon(":/new/prefix1/img/logo.jpg"));
    //设置窗口固定大小
    this->setFixedSize(1400,745);


}

renjiui::~renjiui()
{
    delete ui;
}

void renjiui::paintEvent(QPaintEvent *event)
{
    //绘制背景图片
    QPainter painter(this);
    QPixmap pix(":/new/prefix1/img/background.png");
    painter.drawPixmap(0,0,this->width(),this->height(),pix);

}


void renjiui::on_pushButton_clicked()
{
    interface *in = new interface;
    in->setGeometry(this->geometry());  // 获取当前窗口x,y的数据进行设置，避免窗口乱掉
    in->show();
    this->close();

}

