/********************************************************************************
** Form generated from reading UI file 'renjiui.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_RENJIUI_H
#define UI_RENJIUI_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_renjiui
{
public:
    QWidget *centralwidget;
    QPushButton *pushButton;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *renjiui)
    {
        if (renjiui->objectName().isEmpty())
            renjiui->setObjectName(QString::fromUtf8("renjiui"));
        renjiui->resize(1400, 900);
        centralwidget = new QWidget(renjiui);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        pushButton = new QPushButton(centralwidget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        pushButton->setGeometry(QRect(1050, 570, 251, 101));
        QFont font;
        font.setPointSize(27);
        pushButton->setFont(font);
        pushButton->setStyleSheet(QString::fromUtf8("border-image: url(:/new/prefix1/img/jinruchengxu.png);"));
        renjiui->setCentralWidget(centralwidget);
        menubar = new QMenuBar(renjiui);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 1400, 27));
        renjiui->setMenuBar(menubar);
        statusbar = new QStatusBar(renjiui);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        renjiui->setStatusBar(statusbar);

        retranslateUi(renjiui);

        QMetaObject::connectSlotsByName(renjiui);
    } // setupUi

    void retranslateUi(QMainWindow *renjiui)
    {
        renjiui->setWindowTitle(QApplication::translate("renjiui", "MainWindow", nullptr));
        pushButton->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class renjiui: public Ui_renjiui {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_RENJIUI_H
