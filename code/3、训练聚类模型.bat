@echo off
chcp 65001
echo 开始训练聚类模型
.\python38\python.exe cluster/train_cluster.py
echo 训练完成
pause