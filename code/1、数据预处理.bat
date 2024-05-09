@echo off
chcp 65001
echo 数据重采样至44100hz
.\python38\python.exe resample.py
echo 重采样完成
echo ====================================
echo 划分数据集并生成配置文件
.\python38\python.exe preprocess_flist_config.py
echo 配置文件生成完成
echo ====================================
echo 生成hubert/f0文件
.\python38\python.exe preprocess_hubert_f0.py
echo 数据预处理完成
pause