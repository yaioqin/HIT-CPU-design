# 实验三测试环境说明

lab3文件夹为计算机体系结构课程实验3-指令 CACHE 设计与实现实验测试环境的目录

## 目录
```
├── cache_test                          Cache自动化测试环境的Vivado工程
│   ├── cache_test.srcs                 所有用户编写的源码、仿真文件与约束文件，你在项目中创建的文件可以在这里找到
│   ├── cache_trace.txt                 自动化测试所使用的trace文件，存储指令访存的访存地址和数据序列
│   ├── axi_ram.coe                     自动化测试所使用的coe文件，用于初始化存储器
│   └── cache_test.xpr                  实验所用的项目，直接双击即可打开完整的实验 Vivado 工程
└── cache_cpu_test                      在CPU上使用Cache的Vivado工程
│   ├── cache_cpu_test.srcs             所有用户编写的源码、仿真文件与约束文件，你在项目中创建的文件可以在这里找到
│   ├── cache_cpu_test.data             
│   |   ├──inst.coe                     CPU测试程序的coe文件，描述指令存储器的值，被装载于axi bram IP核中
|   |   ├──data.txt                     CPU数据存储器初始化文件
|   |   └──trace.txt                    用于验证CPU运行正确性的trace文件
│   └── cache_cpu_test.xpr              实验所用的项目，直接双击即可打开完整的实验 Vivado 工程
└── readme.md                           本文档
```

## 测试

对于给定的两个Vivado项目，将你实现的cache模块（```cache.v```）等加入其中，直接仿真即可。