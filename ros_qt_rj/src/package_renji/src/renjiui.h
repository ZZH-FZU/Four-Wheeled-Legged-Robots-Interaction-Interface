#ifndef RENJIUI_H
#define RENJIUI_H

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <QtWidgets/QMainWindow>


namespace Ui {
class renjiui;
}

class renjiui : public QMainWindow
{
    Q_OBJECT

public:
    explicit renjiui(QWidget *parent = nullptr);
    ~renjiui();

private slots:
    void on_pushButton_clicked();

private:
    Ui::renjiui *ui;

protected:
    virtual void paintEvent(QPaintEvent *event);

};

#endif // RENJIUI_H
