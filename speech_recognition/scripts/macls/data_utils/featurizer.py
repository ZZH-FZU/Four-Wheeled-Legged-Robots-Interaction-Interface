import torch
from torch import nn
from torchaudio.transforms import MelSpectrogram, Spectrogram, MFCC
import numpy as np


class AudioFeaturizer(nn.Module):
    """音频特征器

    :param feature_method: 所使用的预处理方法
    :type feature_method: str
    :param method_args: 预处理方法的参数
    :type method_args: dict
    """

    def __init__(self, feature_method='MelSpectrogram', method_args={}):
        super().__init__()
        self._method_args = method_args
        self._feature_method = feature_method
        if feature_method == 'MelSpectrogram':
            self.feat_fun = MelSpectrogram(**method_args)
        elif feature_method == 'Spectrogram':
            self.feat_fun = Spectrogram(**method_args)
        elif feature_method == 'MFCC':
            self.feat_fun = MFCC(**method_args)

        else:
            raise Exception(f'预处理方法 {self._feature_method} 不存在!')

    def forward(self, waveforms, input_lens_ratio):
        """从AudioSegment中提取音频特征

        :param waveforms: Audio segment to extract features from.
        :type waveforms: AudioSegment
        :param input_lens_ratio: input length ratio
        :type input_lens_ratio: tensor
        :return: Spectrogram audio feature in 2darray.
        :rtype: ndarray
        """
        feature = self.feat_fun(waveforms)
        feature = feature.transpose(2, 1)
        # 归一化
        feature = feature - feature.mean(1, keepdim=True)
        # 对掩码比例进行扩展
        input_lens = (input_lens_ratio * feature.shape[1])
        mask_lens = torch.round(input_lens).long()
        mask_lens = mask_lens.unsqueeze(1)
        input_lens = input_lens.int()
        # 生成掩码张量
        idxs = torch.arange(feature.shape[1], device=feature.device).repeat(feature.shape[0], 1)
        mask = idxs < mask_lens
        mask = mask.unsqueeze(-1)
        # 对特征进行掩码操作
        feature_masked = torch.where(mask, feature, torch.zeros_like(feature))
        return feature_masked, input_lens

    @property
    def feature_dim(self):
        """返回特征大小

        :return: 特征大小
        :rtype: int
        """
        if self._feature_method == 'MelSpectrogram':
            return self._method_args.get('n_mels', 128)
        elif self._feature_method == 'Spectrogram':
            return self._method_args.get('n_fft', 400) // 2 + 1
        elif self._feature_method == 'MFCC':
            return self._method_args.get('n_mfcc', 40)

        else:
            raise Exception('没有{}预处理方法'.format(self._feature_method))

