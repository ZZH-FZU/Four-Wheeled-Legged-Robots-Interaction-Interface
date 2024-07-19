#! /home/zzh/anaconda3/envs/pytorch/bin/python3

import argparse
import functools
import time
import numpy as np
import soundcard
import rospy
from std_msgs.msg import String
from macls.predict import MAClsPredictor
from macls.utils.utils import add_arguments, print_arguments

parser = argparse.ArgumentParser(description=__doc__)
add_arg = functools.partial(add_arguments, argparser=parser)

add_arg('configs', str,
        r'/home/zzh/catkin_ws/src/speech_recognition/scripts/configs/panns.yml', '配置文件')
add_arg('use_gpu', bool, False, '是否使用GPU预测')
add_arg('model_path', str,
        r'/home/zzh/catkin_ws/src/speech_recognition/scripts/best_model/model.pth',  '导出的预测模型文件路径')

args = parser.parse_args()
print_arguments(args=args)

# 获取识别器
predictor = MAClsPredictor(configs=args.configs,
                           model_path=args.model_path,
                           use_gpu=args.use_gpu)

# 录制时间，单位秒
sec_time = 2
# 上一部分的数据
last_data = None
# 上一部分的数据长度
last_len = 0.3


def real_time_predict():
    global last_data
    block_size = int(16000 * sec_time)
    input_device = soundcard.default_microphone()
    recorder = input_device.recorder(samplerate=16000, channels=1, blocksize=block_size)
    with recorder:
        while True:
            # 开始录制并获取数据
            data = recorder.record(numframes=block_size)
            data = data.squeeze()
            if last_data is not None:
                input_data = np.concatenate((last_data, data))
            else:
                input_data = data
            last_data = data[-int(16000 * last_len):]

            # 使用识别器进行预测
            label, score = predictor.predict(audio_data=input_data)
            if label:  # 如果有识别结果
                print(f"触发指令：{label}")
                return label


def talker():
    pub = rospy.Publisher('speech', String, queue_size=10)
    rospy.init_node('speech_action', anonymous=True)
    print("请发出指令...")
    while not rospy.is_shutdown():
        x = real_time_predict()
        str_ = str(x)
        rospy.loginfo(str_)
        pub.publish(str_)


if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
