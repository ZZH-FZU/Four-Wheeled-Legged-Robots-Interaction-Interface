# 介绍
本项目基于Qt5开发，基于catkin_make进行构建，可实现本套代码在ROS系统中使用。
软件实现ROS通信与界面相结合，所有功能（语音识别、手势识别等）均采用轻量化架构实现，且因此可以在一些性能比较低的边缘设备轻松运行。
## 可实现功能
1. 语音识别控制四轮足机器人及仿真机器人
2. 手势识别控制四轮足机器人及仿真机器人
3. 基本界面控制四轮足机器人及仿真机器人
4. 异质多模态信息融合
5. 监控机器人运动状态
6. 展示前视相机
# 项目截图
![多模态人机交互界面](https://github.com/ZZH-FZU/Four-Wheeled-Legged-Robots-Interaction-Interface/raw/master/gui.png)
# 编译
### 1. 环境依赖
1. Ubuntu 20.04, ROS noetic
2. QT 5.10版本及后续版本
3. Python: 3.7 - 3.10 及后续版本
### 2. 环境安装
理论上只需要安装如下基础包就可以编译此项目
```
sudo apt-get update
sudo apt-get install qtbase5-dev qt5-qmake qtbase5-dev-tools libqt5svg5-dev qtbase5-private-dev libeigen3-dev libgtest-dev libsdl-image1.2-dev libsdl1.2-dev -y
```
### 3. 安装python依赖
```
pip3 install -r requirements.txt
```
### 4. 克隆本项目
```
mkdir -p ~/qt_ws
cd ~/qt_ws
git clone https://github.com/ZZH-FZU/Quadruped-Wheeled-legged-Robots-Interaction-Interface.git
```
*注：*
*1.项目中 /ros_qt_rj 为四轮足机器人QT智能交互程序界面源码*  
*2. /speech_recognition 为基于轻量化架构，整合MFCC的CNN语音识别模型，训练并精准识别具体需求场景的语音识别ROS项目源码*  
*3. /mediapipe_ros 为基于MediaPipe轻量化框架和CNN的手势识别ROS项目源码*  
*4. /fusion_data 为多模态信息融合模块ROS项目源码*  
*5. /catkin_cheetah_ros_ws 为MIT mini cheetah机器人ROS项目，并引入智能交互程序界面控制、显示历史轨迹和特殊场景world建图等源码*
### 5. 编译项目
```
cd {your workspace}
catkin_make
source devel/setup.bash
```
# 运行
编译成功后，于软件配置文件路径运行项目（运行一次软件后会自动生成在可执行程序相对路径下）
```
roscore
cd ~/workspace/ros_qt_rj/devel/lib/package_renji
./renjiui
```
运行后可于程序界面打开语音识别、手势识别和多模态信息融合等模块，进行四轮足机器人控制及机器人仿真控制。
