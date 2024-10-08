---
title: Windows系统重装
date: 2023-07-12 00:02:00
tags:
hidden: true
---
# Windows系统重装

## 一、工具准备  
1. 下载Windows官方镜像  
微软官方Windows10下载地址：  
<https://www.microsoft.com/zh-cn/software-download/windows10>   
微软官方Windows11下载地址：  
<https://www.microsoft.com/zh-cn/software-download/windows11>  
<!-- more -->
第三方下载地址：<https://next.itellyou.cn/>  
第三方下载的也是官方镜像，需要配合迅雷下载，下载速度比官方镜像更快。
2. 推荐使用U盘+PE系统进行安装，在安装过程中出现意外也可以有重新来过的机会。   
下载微PE：<https://www.wepe.com.cn/download.html>
![微PE下载](/images/wepe_download.png)
选择最新版本的，下载64位版本。
## 二、备份文件
将C盘内，需要的文件备份到C盘以外的其他盘，可以是硬盘的其他分区，也可以是U盘、移动硬盘。
## 三、制作PE系统盘   
U盘分区格式选择：  
大约2012年以后的电脑采用UEFI引导，引导分区格式为FAT32格式，PE系统需要放在FAT32分区内，FAT32分区最大支持4GB的文件，所以系统镜像无法放入FAT32分区内。  
1）单FAT32分区，PE系统放在FAT32分区内，然后将系统镜像放在电脑的硬盘中。  
2）系统镜像需要放在NTFS分区内，U盘采用FAT32+NTFS双分区，这样这份U盘可以给任何电脑重装系统。  

操作过程：以FAT32+NTFS双分区为例
1. 右键此电脑-管理-磁盘管理
2. 找到U盘，右键，格式化为NTFS分区，如果已经是NTFS分区可以跳过这步
3. 找到U盘，右键，压缩卷，至少压缩300MB的空间，也可以更多。
4. 在U盘未分配部分右键、新建卷，新建一个FAT32的分区。
   ![U盘分区](/images/U盘分区.png)
5. 如果采用单FAT32分区，跳过1-4步骤，如果原本不是FAT32，则格式化为FAT32
6. 双击运行下载的微PE工具箱，选择生成ISO文件，ISO文件保存到一个可以找得到的地方。
   ![生成ISO](/images/WEPE生成ISO.png)
7. 找到生成的镜像，双击打开，会出现一个虚拟的光驱盘符。
8. 将虚拟光驱内的所有文件复制，粘贴到U盘FAT32分区内。
9. 将Windows10或Windows11官方镜像复制到U盘的NTFS分区内，或者复制到C盘以外的硬盘。
10. 打开浏览器，搜索XX笔记本或XX主板的启动热键或如何从U盘启动，通常方法是在开启的时候不停的按下某一个按键。
    ![U盘启动方法](/images/U盘启动方法.png)
11. 选择USB/UDISK字样或者你的U盘品牌
    ![U盘启动](/images/U盘启动.png)
12. 进入PE系统后，确保能找到Windows系统镜像，且不在原本的系统盘内。
13. 确认找得到系统镜像，格式化原本的系统盘，大概率还是C盘，可以通过分区盘大小和分区盘内的文件确定，完成这步原系统盘内所有文件都将消失。
14. 找到桌面的Dism++，双击打开，文件-释放映像，点第一个浏览，选择Windows系统镜像。
15. 点第二个浏览，选择格式化后的系统盘，完成后点确定，开始释放镜像。
    ![释放映像](/images/释放映像.png)
16. 等待映像还原成功，重启电脑。
17. 至此系统已经安装完成，首次开机会慢一点，跟随提示完成系统初始化设置。至此可以使用新系统了。