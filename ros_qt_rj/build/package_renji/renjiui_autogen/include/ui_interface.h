/********************************************************************************
** Form generated from reading UI file 'interface.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_INTERFACE_H
#define UI_INTERFACE_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QFrame>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_interface
{
public:
    QAction *Open;
    QAction *Stop;
    QAction *Sit;
    QAction *Down;
    QWidget *centralwidget;
    QPushButton *pushButton_8;
    QLabel *cameraView;
    QFrame *line;
    QPushButton *turn_right;
    QPushButton *pushButton_13;
    QPushButton *pushButton;
    QPushButton *pushButton_3;
    QPushButton *pushButton_7;
    QPushButton *pushButton_12;
    QLabel *Labtime;
    QLabel *label_5;
    QLabel *label_6;
    QToolButton *readFarme;
    QPushButton *pushButton_18;
    QLabel *Labdate;
    QLabel *label_3;
    QPushButton *pushButton_17;
    QPushButton *back;
    QPushButton *pushButton_forward;
    QPushButton *shoushi;
    QPushButton *pushButton_16;
    QPushButton *pushButton_10;
    QLabel *label;
    QFrame *line_2;
    QPushButton *yuyin;
    QLabel *label_2;
    QToolButton *pb_sit_down;
    QLabel *messageLabel;
    QLabel *label_7;
    QPushButton *stop_yuyin;
    QPushButton *pushButton_2;
    QPushButton *pushButton_4;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *interface)
    {
        if (interface->objectName().isEmpty())
            interface->setObjectName(QString::fromUtf8("interface"));
        interface->resize(1400, 900);
        Open = new QAction(interface);
        Open->setObjectName(QString::fromUtf8("Open"));
        Stop = new QAction(interface);
        Stop->setObjectName(QString::fromUtf8("Stop"));
        Sit = new QAction(interface);
        Sit->setObjectName(QString::fromUtf8("Sit"));
        Down = new QAction(interface);
        Down->setObjectName(QString::fromUtf8("Down"));
        centralwidget = new QWidget(interface);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        pushButton_8 = new QPushButton(centralwidget);
        pushButton_8->setObjectName(QString::fromUtf8("pushButton_8"));
        pushButton_8->setGeometry(QRect(1300, 480, 91, 65));
        pushButton_8->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/right_2.png);"));
        cameraView = new QLabel(centralwidget);
        cameraView->setObjectName(QString::fromUtf8("cameraView"));
        cameraView->setGeometry(QRect(200, 110, 995, 541));
        cameraView->setStyleSheet(QString::fromUtf8("background-color: rgb(136, 138, 133);"));
        line = new QFrame(centralwidget);
        line->setObjectName(QString::fromUtf8("line"));
        line->setGeometry(QRect(0, 90, 1401, 20));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);
        turn_right = new QPushButton(centralwidget);
        turn_right->setObjectName(QString::fromUtf8("turn_right"));
        turn_right->setGeometry(QRect(130, 480, 65, 65));
        turn_right->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/right_1.png);"));
        pushButton_13 = new QPushButton(centralwidget);
        pushButton_13->setObjectName(QString::fromUtf8("pushButton_13"));
        pushButton_13->setGeometry(QRect(1050, 670, 111, 51));
        QFont font;
        font.setPointSize(14);
        pushButton_13->setFont(font);
        pushButton_13->setStyleSheet(QString::fromUtf8(""));
        pushButton = new QPushButton(centralwidget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        pushButton->setGeometry(QRect(1310, 10, 81, 81));
        pushButton->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/stop.png);"));
        pushButton_3 = new QPushButton(centralwidget);
        pushButton_3->setObjectName(QString::fromUtf8("pushButton_3"));
        pushButton_3->setGeometry(QRect(10, 480, 65, 65));
        pushButton_3->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/left_1.png);"));
        pushButton_7 = new QPushButton(centralwidget);
        pushButton_7->setObjectName(QString::fromUtf8("pushButton_7"));
        pushButton_7->setGeometry(QRect(1200, 480, 91, 65));
        pushButton_7->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/left_2.png);"));
        pushButton_12 = new QPushButton(centralwidget);
        pushButton_12->setObjectName(QString::fromUtf8("pushButton_12"));
        pushButton_12->setGeometry(QRect(550, 680, 101, 41));
        pushButton_12->setFont(font);
        pushButton_12->setStyleSheet(QString::fromUtf8(""));
        Labtime = new QLabel(centralwidget);
        Labtime->setObjectName(QString::fromUtf8("Labtime"));
        Labtime->setGeometry(QRect(1190, 700, 201, 20));
        QFont font1;
        font1.setPointSize(13);
        Labtime->setFont(font1);
        Labtime->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label_5 = new QLabel(centralwidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(20, 120, 131, 41));
        QFont font2;
        font2.setPointSize(15);
        label_5->setFont(font2);
        label_5->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label_6 = new QLabel(centralwidget);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setGeometry(QRect(1210, 120, 151, 41));
        label_6->setFont(font2);
        label_6->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        readFarme = new QToolButton(centralwidget);
        readFarme->setObjectName(QString::fromUtf8("readFarme"));
        readFarme->setGeometry(QRect(200, 110, 91, 41));
        QFont font3;
        font3.setFamily(QString::fromUtf8("aakar"));
        font3.setPointSize(12);
        readFarme->setFont(font3);
        readFarme->setStyleSheet(QString::fromUtf8("background-color: rgb(211, 215, 207);"));
        readFarme->setPopupMode(QToolButton::InstantPopup);
        pushButton_18 = new QPushButton(centralwidget);
        pushButton_18->setObjectName(QString::fromUtf8("pushButton_18"));
        pushButton_18->setGeometry(QRect(910, 680, 101, 41));
        pushButton_18->setFont(font);
        pushButton_18->setStyleSheet(QString::fromUtf8(""));
        Labdate = new QLabel(centralwidget);
        Labdate->setObjectName(QString::fromUtf8("Labdate"));
        Labdate->setGeometry(QRect(1190, 670, 201, 20));
        Labdate->setFont(font1);
        Labdate->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(910, 30, 51, 31));
        label_3->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/phone.png);"));
        pushButton_17 = new QPushButton(centralwidget);
        pushButton_17->setObjectName(QString::fromUtf8("pushButton_17"));
        pushButton_17->setGeometry(QRect(790, 680, 101, 41));
        pushButton_17->setFont(font);
        pushButton_17->setStyleSheet(QString::fromUtf8(""));
        back = new QPushButton(centralwidget);
        back->setObjectName(QString::fromUtf8("back"));
        back->setGeometry(QRect(70, 540, 65, 65));
        back->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/back_1.png);"));
        pushButton_forward = new QPushButton(centralwidget);
        pushButton_forward->setObjectName(QString::fromUtf8("pushButton_forward"));
        pushButton_forward->setGeometry(QRect(70, 420, 65, 65));
        pushButton_forward->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/forword_1.png);"));
        shoushi = new QPushButton(centralwidget);
        shoushi->setObjectName(QString::fromUtf8("shoushi"));
        shoushi->setGeometry(QRect(1230, 180, 141, 121));
        shoushi->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/hand.png);"));
        pushButton_16 = new QPushButton(centralwidget);
        pushButton_16->setObjectName(QString::fromUtf8("pushButton_16"));
        pushButton_16->setGeometry(QRect(670, 680, 101, 41));
        pushButton_16->setFont(font);
        pushButton_16->setStyleSheet(QString::fromUtf8(""));
        pushButton_10 = new QPushButton(centralwidget);
        pushButton_10->setObjectName(QString::fromUtf8("pushButton_10"));
        pushButton_10->setGeometry(QRect(140, 680, 101, 41));
        pushButton_10->setFont(font);
        pushButton_10->setStyleSheet(QString::fromUtf8(""));
        label = new QLabel(centralwidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(30, 10, 81, 81));
        label->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/fzu_logo.png);"));
        line_2 = new QFrame(centralwidget);
        line_2->setObjectName(QString::fromUtf8("line_2"));
        line_2->setGeometry(QRect(0, 650, 1401, 18));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);
        yuyin = new QPushButton(centralwidget);
        yuyin->setObjectName(QString::fromUtf8("yuyin"));
        yuyin->setGeometry(QRect(40, 190, 111, 101));
        yuyin->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/mic.png);"));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(380, 20, 641, 61));
        QFont font4;
        font4.setFamily(QString::fromUtf8("System-ui"));
        font4.setPointSize(30);
        font4.setBold(true);
        font4.setItalic(false);
        label_2->setFont(font4);
        label_2->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        pb_sit_down = new QToolButton(centralwidget);
        pb_sit_down->setObjectName(QString::fromUtf8("pb_sit_down"));
        pb_sit_down->setGeometry(QRect(20, 680, 101, 41));
        pb_sit_down->setFont(font);
        pb_sit_down->setPopupMode(QToolButton::InstantPopup);
        messageLabel = new QLabel(centralwidget);
        messageLabel->setObjectName(QString::fromUtf8("messageLabel"));
        messageLabel->setGeometry(QRect(390, 680, 121, 41));
        messageLabel->setFont(font);
        messageLabel->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label_7 = new QLabel(centralwidget);
        label_7->setObjectName(QString::fromUtf8("label_7"));
        label_7->setGeometry(QRect(280, 680, 111, 41));
        label_7->setFont(font);
        label_7->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        stop_yuyin = new QPushButton(centralwidget);
        stop_yuyin->setObjectName(QString::fromUtf8("stop_yuyin"));
        stop_yuyin->setGeometry(QRect(50, 310, 89, 25));
        pushButton_2 = new QPushButton(centralwidget);
        pushButton_2->setObjectName(QString::fromUtf8("pushButton_2"));
        pushButton_2->setGeometry(QRect(1020, 20, 151, 61));
        pushButton_2->setFont(font);
        pushButton_4 = new QPushButton(centralwidget);
        pushButton_4->setObjectName(QString::fromUtf8("pushButton_4"));
        pushButton_4->setGeometry(QRect(1188, 20, 111, 61));
        pushButton_4->setFont(font);
        interface->setCentralWidget(centralwidget);
        menubar = new QMenuBar(interface);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 1400, 27));
        interface->setMenuBar(menubar);
        statusbar = new QStatusBar(interface);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        interface->setStatusBar(statusbar);

        retranslateUi(interface);

        QMetaObject::connectSlotsByName(interface);
    } // setupUi

    void retranslateUi(QMainWindow *interface)
    {
        interface->setWindowTitle(QApplication::translate("interface", "MainWindow", nullptr));
        Open->setText(QApplication::translate("interface", "\346\211\223\345\274\200\347\233\270\346\234\272", nullptr));
#ifndef QT_NO_TOOLTIP
        Open->setToolTip(QApplication::translate("interface", "open", nullptr));
#endif // QT_NO_TOOLTIP
        Stop->setText(QApplication::translate("interface", "\345\205\263\351\227\255\347\233\270\346\234\272", nullptr));
#ifndef QT_NO_TOOLTIP
        Stop->setToolTip(QApplication::translate("interface", "close", nullptr));
#endif // QT_NO_TOOLTIP
        Sit->setText(QApplication::translate("interface", "\347\253\231\347\253\213", nullptr));
#ifndef QT_NO_TOOLTIP
        Sit->setToolTip(QApplication::translate("interface", "sit", nullptr));
#endif // QT_NO_TOOLTIP
        Down->setText(QApplication::translate("interface", "\350\266\264\344\270\213", nullptr));
#ifndef QT_NO_TOOLTIP
        Down->setToolTip(QApplication::translate("interface", "down", nullptr));
#endif // QT_NO_TOOLTIP
        pushButton_8->setText(QString());
        cameraView->setText(QString());
        turn_right->setText(QString());
        pushButton_13->setText(QApplication::translate("interface", "\345\274\200\345\247\213\350\277\220\345\212\250", nullptr));
        pushButton->setText(QString());
        pushButton_3->setText(QString());
        pushButton_7->setText(QString());
        pushButton_12->setText(QApplication::translate("interface", "\350\241\214\350\265\260", nullptr));
        Labtime->setText(QApplication::translate("interface", "\346\227\266\351\227\264\357\274\232", nullptr));
        label_5->setText(QApplication::translate("interface", "\350\257\255\351\237\263\350\257\206\345\210\253\346\250\241\345\235\227", nullptr));
        label_6->setText(QApplication::translate("interface", "\346\211\213\345\212\277\350\257\206\345\210\253\346\250\241\345\235\227", nullptr));
        readFarme->setText(QApplication::translate("interface", "\347\233\270\346\234\272\345\274\200\345\205\263", nullptr));
        pushButton_18->setText(QApplication::translate("interface", "\350\267\263\350\267\203", nullptr));
        Labdate->setText(QApplication::translate("interface", "\346\227\245\346\234\237\357\274\232", nullptr));
        label_3->setText(QString());
        pushButton_17->setText(QApplication::translate("interface", "\347\210\254\346\245\274", nullptr));
        back->setText(QString());
        pushButton_forward->setText(QString());
        shoushi->setText(QString());
        pushButton_16->setText(QApplication::translate("interface", "\350\267\221\346\255\245", nullptr));
        pushButton_10->setText(QApplication::translate("interface", "\345\212\233\346\216\247", nullptr));
        label->setText(QString());
        yuyin->setText(QString());
        label_2->setText(QApplication::translate("interface", "\345\233\233\350\275\256\350\266\263\346\234\272\345\231\250\344\272\272\345\244\232\346\250\241\346\200\201\344\272\272\346\234\272\344\272\244\344\272\222\347\250\213\345\272\217", nullptr));
        pb_sit_down->setText(QApplication::translate("interface", "\347\253\231\347\253\213/\350\266\264\344\270\213", nullptr));
        messageLabel->setText(QString());
        label_7->setText(QApplication::translate("interface", "\346\234\272\345\231\250\347\213\227\347\212\266\346\200\201\357\274\232", nullptr));
        stop_yuyin->setText(QApplication::translate("interface", "stop", nullptr));
        pushButton_2->setText(QApplication::translate("interface", "\346\216\247\345\210\266\346\234\272\345\231\250\344\272\272\344\273\277\347\234\237", nullptr));
        pushButton_4->setText(QApplication::translate("interface", "\345\244\232\346\250\241\346\200\201\350\236\215\345\220\210", nullptr));
    } // retranslateUi

};

namespace Ui {
    class interface: public Ui_interface {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_INTERFACE_H
