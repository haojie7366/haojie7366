---
title: linux文件共享
date: 2023-07-03 00:02:00
tags:
hidden: true
---
# linux文件共享
在[01安装linux](/2023/07/01/01%E5%AE%89%E8%A3%85linux)里介绍了sftp文件共享，在这边再介绍smb和ftp两种文件共享，这三种共享方式各有优缺点，可以一起使用。  
sftp的优点是安全，传输过程是加密的，不会被中间人监听内容。在外使用ipv6访问服务器推荐只用sftp，手机上使用es文件管理器使用sftp服务。  
<!-- more -->
## smb文件共享
安装samba`sudo apt install samba`
编辑配置文件`sudo vim /etc/samba/smb.conf`  
找到`[homes]`下的`read only = yes`，将yes改成no
添加smb用户`sudo smbpasswd -a user`user是linux用户名，然后会要求输入两遍密码，这两遍密钥要一致，可以与linux用户密码不一样，这个密码就是smb的共享密码。    
运行`/etc/init.d/smbd restart`重启samba  
windows上使用smb共享文件：打开我的电脑-在地址栏中输入`\\ip`然后会要求输入用户名和密码。地址栏就是图片中192.168.3.3的位置。
![windwos访问服务器文件](/images/1.png)
可以在我的电脑中找到映射网络驱动器，把smb文件夹变成像C、D、E这样的盘符，一般是Z盘，地址为`\\ip\user`，后面还可以跟着文件夹名。  
smb的优点在windows中可以像本地硬盘一样使用，使用方便，但是传输过程也没有加密，最好不要再公网中使用(不关防火墙也用不了)。
## ftp文件共享
安装vsftpd`sudo apt install vsftpd`。  
编辑配置文件/etc/vsftpd.conf `sudo vim /etc/vsftpd.conf`并在文件末尾添加以下内容。

    write_enable=YES
    chroot_local_user=YES
    allow_writeable_chroot=YES
    chroot_list_enable=NO
重启vsftpd`service vsftpd restart`。  
安卓手机安装es文件管理器，可以去找个去广告的版本。  
确保手机和服务器处于同一内网，打开es文件管理器，我的网络-右上角三个点-新建-ftp  
填写服务器、端口、用户名、密码。  
服务器是ip地址，例如192.168.1.2，在上一篇中[02ipv6远程访问](/2023/07/02/02ipv6%E8%BF%9C%E7%A8%8B%E8%AE%BF%E9%97%AE)中防火墙禁止了ipv6地址除了22以为的端口，所以ipv6地址和ipv6域名都无法使用。端口是默认的21，用户名和密码是linux的用户名和密码。![配置页面](/images/7.jpg)  
ftp的优点是性能要求低，如果手机性能不好，使用sftp和smb会跑不到满速，如果测试速度差不多也可以不用ftp。缺点是在windows中使用有可能造成乱码，而且传输过程没有加密，所以最好不要在公网用ftp管理文件，当然防火墙也禁了ipv6的ftp端口了。
## 离线下载
请看下一篇[离线下载](/2023/07/05/05离线下载/)