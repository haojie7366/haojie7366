---
title: 01安装linux
date: 2023-06-07 00:02:00
tags:
---
# 安装linux

## 硬件选择
主要就是要注意以下功耗，如果功率达到40W，那么一天就要1度电，服务器又是一年到头都开着的积少成多，电费还是挺贵的。性能并不重要，毕竟自己一个人用，对性能要求不高，推荐使用旧的笔记本电脑或者二手的工控机。

## 系统安装
我用的是deepin15.11系统，这个系统在现在来看已经挺老了，但是目前使用还算稳定，并没有换系统的打算。  
当然也可以用其他的系统，比如更多人使用的ubuntu系统或者的deepin的最新系统。这边给个deepin的安装教程，并记住安装系统时的用户名和密码。  
<https://www.deepin.org/zh/installation/>  
如果无法独立完成系统的安装，那么接下来的教程可能并不适合你。

## 系统设置
为系统完成以下设置：  
1. 设置系统进入睡眠状态的时间为永不。   
## 安装openssh
在桌面右键，选择在终端中打开。并在终端中输入以下命令。#后的内容为注释，不需要输入，过程中需要用到网络。  
    
    #更新软件商店
    sudo apt-get update 
    #安装openssh-server 
    sudo apt-get install openssh-server 
## 远程登陆-windows    
使用windows电脑远程控制linux
1. 获取linux的IP地址，将windows和linux连接到同一局域网下，windows电脑打开路由器或者光猫的管理界面，找到linux的IP地址，并设置ip和mac绑定。
2. 在windows上按下win+R打开运行，输入`cmd`并运行。
3. 在cmd窗口中输入`ssh user@192.168.1.2`,其中user是安装系统时的用户名，192.168.1.2是linux的IP地址，需要根据自己的情况修改命令。
4. 第一次连接时会要求核对服务器公钥，输入`yes`后回车
5. 随后会要求输入密码，密码是linux安装时的密码，并且输入的密码不会再cmd窗口上显示。
6. 连接成功后就可以再windows上输入linux的命令了，并且输入的命令会在linux上执行。
## sftp文件共享
在Linux上安装FileZilla Client软件，并在软件中设置主机`sftp://IP`、`用户名`、`密码`即可访问linux上的文件，初步实现nas的功能。