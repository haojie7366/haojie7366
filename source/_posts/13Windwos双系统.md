---
title: Windows双系统
date: 2023-07-13 00:02:00
tags:
---
## 一、工具准备  
1. 下载Windows官方镜像  
微软官方Windows10下载地址：  
<https://www.microsoft.com/zh-cn/software-download/windows10>   
微软官方Windows11下载地址：  
<https://www.microsoft.com/zh-cn/software-download/windows11>  
第三方下载地址：<https://next.itellyou.cn/>  
第三方下载的也是官方镜像，需要配合迅雷下载，下载速度比官方镜像更快。
1. Dism++: [点击下载](/images/Dism++.zip)
2. BOOTICE: [点击下载](/images/BOOTICEx64.exe)
3. 推荐准备一个U盘，U盘内安装PE系统，在安装过程中出现意外也可以在PE中有修复系统的可能。   
下载微PE：<https://www.wepe.com.cn/download.html>  
![微PE下载](/images/wepe_download.png)
选择最新版本的，下载64位版本，下载完成后打开，安装到U盘。
![微PE安装](/images/wepe_install_U.png)
## 二、安装步骤
1. 准备安装空间，可以是原本的某个分区，需要格式化这个分区，然后可以跳过步骤3和步骤4。
2. 也可以将原本的分区减小，新建一个分区用于安装系统。
3. 此电脑右键-管理-磁盘管理，选择一个磁盘剩余空间大于40G的分区，右键压缩卷，至少压缩40G用于安装系统，更多也可以。
   ![压缩卷](/images/压缩卷.png)
4. 将刚刚压缩得到的空白空间内右键-新建简单卷，创建一个新的分区，记住盘符。
5. 解压缩Dism++,双击里面的Dism++x86，运行程序
6. 文件-释放映像，点第一个浏览，选择Windows系统镜像。
7. 点第二个浏览，选择新建的分区，完成后点确定，开始释放镜像。
    ![释放映像](/images/释放映像D.png)
8. 双击打开BOOTICE，选择BCD编辑—当前系统BCD-智能编辑模式—添加-新建Windows 7/8/8.1启动项
9. 编辑新建的引导，修改启动磁盘和启动分区为新系统的磁盘和分区，可以随意修改菜单标题，然后点保存当前系统设置
    ![新建引导](/images/引导-双系统.png)
10. 左侧框内选择新建的引导，设置为默认，超时时间可以设置为3秒，保存全局设置
11. 确认DISM++释放镜像已经成功后，重启电脑。
12. 至此新系统已经安装完成，首次开机会慢一点，跟随提示完成系统初始化设置。至此可以使用新系统了。