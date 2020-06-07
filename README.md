Kangle一键脚本
本脚本是一键安装Kangle+Easypanel+Mysql的集合脚本，已率先支持CentOS7系列

个人博客 高防主机 域名转发
脚本简介
本脚本是一键安装Kangle+Easypanel+Mysql的集合脚本。
脚本本身集成：PHP5.3、PHP5.4、PHP5.5、PHP5.6、PHP7.1、PHP7.2、PHP7.3、MYSQL5.6
支持前台用户任意切换PHP5.3-7.3以适应网站程序
脚本特点

安装包内PHP套件以及Kangle套件均已本地化，达到最佳连接速度。
自带Kangle商业版最新版本
支持EP前台自由切换PHP5.3-7.3
所有php版本均集成SG11组件
php.ini默认开启防跨站
MySQL调整配置参数优化性能
自动更新phpMyAdmin至最新版
安装前可自定义数据库密码，避免安装完成后再设置的麻烦
支持自定义403.404.503.504等错误页面
脚本中可切换其它几套EP用户后台模板
EP基于原版的优化内容

1.修复CDN站点不显示SSL的问题
2.新增SSL证书可同步到cdn节点
3.SSL配置页面新增"HTTP跳转到HTTPS"选项
4.SSL配置页面新增开启HTTP2选项
5.修复部分情况下SSL证书无法保存问题
6.增加独立的PHP版本切换页面
7.修复使用产品ID对接开通的主机无法修改php版本的问题
8.修复带有空格的文件名无法解压和重命名的问题
9.修复修改php版本后刷新页面导致的php异常问题
10.CDN绑定域名可以自定义回源协议
11.优化防CC设置页面，支持设置IP白名单
12.清除缓存页面支持批量清除
* EP升级方法：脚本主菜单选择单独安装/更新组件，然后选择更新Easypanel
注意事项

本脚本支持CentOS 6.x/CentOS 7.x系统

安装方式

请复制以下指令到ssh连接软件粘贴执行

yum -y install wget;wget http://kangle.odata.cc/start;sh start
