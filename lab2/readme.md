# 实验二测试环境说明

lab2文件夹为计算机体系结构课程实验2-分支预测器 实验测试环境的目录

## 目录
```
├── branch_predict_test                 分支预测器测试环境的Vivado工程
│   ├── branch_predict_test.srcs        所有用户编写的源码、仿真文件与约束文件，你在项目中创建的文件可以在这里找到
│   ├── branch_predict_test.data        自动化测试所使用的指令存储器、数据存储器的初始化数据文件和trace文件
│   └── branch_predict_test.xpr         实验所用的项目，直接双击即可打开完整的实验 Vivado 工程
└── readme.md                           本文档
```

## 测试

对于给定的两个Vivado项目，将你实现的分支预测器模块（```branch_predict.v```）等加入其中，直接仿真即可。