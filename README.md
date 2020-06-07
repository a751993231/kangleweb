
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Kangle一键脚本</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="kangle,easypanel,kangle商业版,kangle破解版,kangle一键脚本,kangle.odata.cc" />
<meta name="description" content="本脚本是一键安装Kangle+Easypanel+Mysql的集合脚本。脚本本身集成：PHP5.3-7.3、MYSQL5.6。使用方便，功能强大。" />
<link href='//fonts.loli.net/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="style.css">
<style>
	h4 span {
    font-size: 0.9em;
    margin-left: 5px;
    color: #999;
    font-weight: 400;
	}
	.site-footer-credits a {
	color: #819198;
	}
	section div{
	margin-bottom: 30px;
	}
	.highlighter-rouge{
	margin-bottom: 20px;
	}
</style>
<script>
function stop(){
return false;
}
document.oncontextmenu=stop;
</script>
</head>
<body>
<section class="page-header">
<h1 class="project-name">Kangle一键脚本</h1>
<h2 class="project-tagline">本脚本是一键安装Kangle+Easypanel+Mysql的集合脚本，已率先支持CentOS7系列</h2>
<a href="http://blog.cccyun.cc/" target="_blank" class="btn">个人博客</a>
<a href="http://www.cccyun.net/" target="_blank" class="btn">高防主机</a>
<a href="http://url.cccyun.cc/" target="_blank" class="btn">域名转发</a>
</section>
<section class="main-content">
<div>
<h1><a href="#header-info"></a>脚本简介</h1>
<div>
<p>本脚本是一键安装Kangle+Easypanel+Mysql的集合脚本。<br />
脚本本身集成：PHP5.3、PHP5.4、PHP5.5、PHP5.6、PHP7.1、PHP7.2、PHP7.3、MYSQL5.6<br />
支持前台用户任意切换PHP5.3-7.3以适应网站程序<br />
</p>
</div>
</div>
<div>
<h2><a href="#header-point"></a>脚本特点</h2>
<div>
<blockquote>
<p>安装包内PHP套件以及Kangle套件均已本地化，达到最佳连接速度。<br />
自带Kangle商业版最新版本<br />
支持EP前台自由切换PHP5.3-7.3<br />
所有php版本均集成SG11组件<br />
php.ini默认开启防跨站<br />
MySQL调整配置参数优化性能<br />
自动更新phpMyAdmin至最新版<br />
安装前可自定义数据库密码，避免安装完成后再设置的麻烦<br />
支持自定义403.404.503.504等错误页面<br />
脚本中可切换其它几套EP用户后台模板</p>
</blockquote>
</div>
<div id="hideCity">
<h2><a href="#header-point"></a>EP基于原版的优化内容</h2>
<div>
<blockquote>
<p>1.修复CDN站点不显示SSL的问题<br />
2.新增SSL证书可同步到cdn节点<br />
3.SSL配置页面新增"HTTP跳转到HTTPS"选项<br />
4.SSL配置页面新增开启HTTP2选项<br />
5.修复部分情况下SSL证书无法保存问题<br />
6.增加独立的PHP版本切换页面<br />
7.修复使用产品ID对接开通的主机无法修改php版本的问题<br />
8.修复带有空格的文件名无法解压和重命名的问题<br />
9.修复修改php版本后刷新页面导致的php异常问题<br />
10.CDN绑定域名可以自定义回源协议<br />
11.优化防CC设置页面，支持设置IP白名单<br />
12.清除缓存页面支持批量清除<br />
* EP升级方法：脚本主菜单选择单独安装/更新组件，然后选择更新Easypanel</p>
</blockquote>
</div>
</div>
<div>
<h2><a href="#header-attention"></a>注意事项</h2>
<div>
<p>本脚本支持CentOS 6.x/CentOS 7.x系统
</p>
</div>
</div>
<div>
<h2><a href="#header-install"></a>安装方式</h2>
<div>
<h4><span>请复制以下指令到ssh连接软件粘贴执行</span></h4>
<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><strong><code>yum -y install wget;wget http://kangle.odata.cc/start;sh start</code></strong>
</pre></div></div>
<hr />
</div>
</div>
<div id="aff">
<h2><a href="#header-aff"></a>推荐VPS</h2>
<div>
<h4>美国CN2大带宽高防御 100G防御 可以设置无视CC</h4>
<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><strong>2核 2G 50GSSD 20M带宽 100G防御 300元/月
4核 4G 60GSSD 30M带宽 100G防御 450元/月
8核 8G 80GSSD 30M带宽 100G防御 600元/月

购买请联系QQ:<a href="http://wpa.qq.com/msgrd?v=3&uin=1277180438&site=qq&menu=yes" target="_blank">1277180438</a>
可以免费帮安装宝塔/Kangle等主机控制面板
</pre></div></div>
<h4>阿里云低至一折服务器</h4>
<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><strong>
【云小站】新老客都返现+现金红包+瓜分60万奖池，新用户低至1折，服务器低至89元/年<br/>
<a href="https://www.aliyun.com/minisite/goods?userCode=1cyrqim7
" target="_blank">购买地址: https://www.aliyun.com/minisite/goods?userCode=1cyrqim7
</a></strong>
</pre></div></div>
<!--h4>阿里云香港冰点价服务器</h4>
<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><strong>1核 1G 25G 30M带宽 月限流量1T 24元/月

<a href="http://t.cn/EtGqEAO" target="_blank">领券地址: http://t.cn/EtGqEAO</a>
<a href="https://common-buy.aliyun.com/?commodityCode=swas&userCode=1cyrqim7&regionId=cn-hongkong" target="_blank">购买地址: https://common-buy.aliyun.com/?commodityCode=swas&#38;userCode=1cyrqim7&#38;regionId=cn-hongkong</a></strong>
</pre></div></div-->
<hr />
</div>
</div>
<footer class="site-footer">
<span class="site-footer-owner">All rights reserved <a href="#">彩虹</a>.</span>
</footer>
</section>
<script src="https://pv.sohu.com/cityjson?ie=utf-8" type="text/javascript"></script>
<script>
if(returnCitySN['cname'].indexOf("湖南")>-1){
document.getElementById("hideCity").style.display="none";
}
</script>
</body>
</html>
