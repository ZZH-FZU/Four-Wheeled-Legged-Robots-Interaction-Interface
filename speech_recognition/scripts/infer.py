#! /home/zzh/anaconda3/envs/pytorch/bin/python3

import argparse
import functools
import time
from macls.predict import MAClsPredictor
from macls.utils.utils import add_arguments, print_arguments

parser = argparse.ArgumentParser(description=__doc__)
add_arg = functools.partial(add_arguments, argparser=parser)

add_arg('configs',          str,    r'/home/zzh/catkin_ws/src/speech_recognition/scripts/configs/panns.yml',   '配置文件')
add_arg('use_gpu',          bool,   False,                  '是否使用GPU预测')
add_arg('audio_path',       str,    r"/home/zzh/catkin_ws/src/speech_recognition/scripts/20170001P00001A10002.wav", '音频路径')
add_arg('model_path',       str,    r"/home/zzh/catkin_ws/src/speech_recognition/scripts/best_model/model.pth", '导出的预测模型文件路径')
# add_arg('model_path',       str,    r'models\PANNS_CNN6_MFCC\best_model/', '导出的预测模型文件路径')

args = parser.parse_args()
print_arguments(args=args)

# 获取识别器
predictor = MAClsPredictor(configs=args.configs,
                           model_path=args.model_path,
                           use_gpu=args.use_gpu)
t1=time.time()
label, score = predictor.predict(audio_data=args.audio_path)
t2=time.time()
print(t2-t1)
print(f'音频：{args.audio_path} 的预测结果标签为：{label}，得分：{score}')


