---
title: “WindowsToGo”将系统装进U盘
date: 2023-07-15 00:02:00
tags:
hidden: true
---
## 一、工具准备  
1. 下载Windows官方镜像  
微软官方Windows10下载地址：  
<https://www.microsoft.com/zh-cn/software-download/windows10>   
微软官方Windows11下载地址：  
<https://www.microsoft.com/zh-cn/software-download/windows11>  
<!-- more -->
第三方下载地址：<https://next.itellyou.cn/>  
第三方下载的也是官方镜像，需要配合迅雷下载，下载速度比官方镜像更快。
2. Dism++: [点击下载](/images/Dism++.zip)
3. BOOTICE: [点击下载](/images/BOOTICEx64.exe)
4. 准备一个U盘用于安装系统，最好是移动固态硬盘，至少32G。
5. 推荐再准备一个U盘，U盘内安装PE系统，在安装过程中出现意外也可以在PE中有修复系统的可能。   
下载微PE：<https://www.wepe.com.cn/download.html>  
![微PE下载](/images/wepe_download.png)
选择最新版本的，下载64位版本，下载完成后打开，安装到U盘。
![微PE安装](/images/wepe_install_U.png)
## 二、安装步骤
1. 先安装到电脑的硬盘，准备安装空间，分区内至少有40G的剩余空间。
2. 双击打开BOOTICE-磁盘镜像-创建VHD，输入文件位置和名字，例如`C:\Windows10.vhdx`，推荐复制粘贴，可以将C盘换成其他盘，设置虚拟硬盘的容量，如果是32G的U盘，虚拟硬盘容量设置为25G，64G及以上设置为40G或更多。
   ![创建VHD](/images/创建VHD.png)
3. 挂载/卸载VHD-选择刚刚创建的VHD-挂载
4. 此电脑右键-管理-磁盘管理，会弹出虚拟硬盘的初始化磁盘，点确定。
5. 在虚拟硬盘的空白空间内右键-新建简单卷，创建一个新的分区，分区格式为NTFS，记住盘符。
6. 解压缩Dism++,双击里面的Dism++x86，运行程序
7. 文件-释放映像，点第一个浏览，选择Windows系统镜像。
8. 点第二个浏览，选择新建的分区，完成后点确定，开始释放镜像。
    ![释放映像](/images/释放映像D.png)
9.  双击打开BOOTICE，选择BCD编辑—当前系统BCD-智能编辑模式—添加-新建Windows 7/8/8.1启动项
10. 编辑新建的引导，设备类型为VHD(X)，修改启动磁盘和启动分区为虚拟硬盘所在物理磁盘和物理分区，设备文件为`\Windows10.vhdx`，推荐复制粘贴，可以随意修改菜单标题，然后点保存当前系统设置
    ![新建引导](/images/引导-vhd.png)
11. 左侧框内选择新建的引导，设置为默认，超时时间可以设置为3秒，保存全局设置
12. 确认DISM++释放镜像已经成功后，重启电脑。
13. 跟随提示完成系统初始化设置，最好在设置-Windows更新，完成所有系统更新和驱动安装。
14. 打开BOOTICE，选择BCD编辑—当前系统BCD-智能编辑模式—选择刚刚建立的引导，删除。
15. 重启电脑，进入原本的系统。
16. 插入U盘，打开此电脑，找到U盘，确保U盘剩余空间大于40G（32GU盘大于25G），右键-属性，确保U盘分区格式为NTFS，如果不是，需要格式话磁盘，U盘-右键-格式化，选择分区格式为NTFS。
17. 找到刚刚创建的虚拟硬盘文件，例如`C:\Windows10.vhdx`是在C盘根目录下，复制到U盘的NTFS分区内。
18. 双击U盘内的虚拟硬盘文件，打开会弹出一个新的分区，记住分区的盘符。
19. 右键此电脑-管理-磁盘管理
20. 找到U盘，右键，压缩卷，推荐压缩100MB的空间。
21. 在U盘未分配部分右键、新建卷，新建一个分区，分区格式为FAT32，记住分区的盘符。
22. 在电脑左下角WIN标志处右键，打开powershell(管理员)，或者终端管理员。
    ![powershell](/images/powershell管理员.png)
23. 输入命令`bcdboot E:\Windows -s F:`，其中E:\Windows为打开虚拟硬盘新产生的盘符，F:是U盘FAT32分区的盘符
24. 打开浏览器，搜索XX笔记本或XX主板的启动热键或如何从U盘启动，通常方法是在开启的时候不停的按下某一个按键。
    ![U盘启动方法](/images/U盘启动方法.png)
25. 选择USB/UDISK字样或者你的U盘品牌
    ![U盘启动](/images/U盘启动.png)
26. 进入U盘内的系统，安装完成。