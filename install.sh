#!/bin/bash
files="/root/s-hell"
source $files/config
rm -rf hlsh* dns* ots* install* *.sh* *.log*
cd /root/hl-tmp
mkdir $files/log
rm -rf $files/log/*
kangle_var=$1
kangle_completed=$2
select_var=$3
mysql_root_password=$4
isC7=`cat /etc/redhat-release |grep ' 7.'`

function stat_iptables
{
	if [ !  -f /etc/init.d/iptables ] ; then
		return;
	fi
	service iptables stop
	chkconfig iptables off
	return;
	/sbin/iptables -A INPUT -p tcp --dport 80 -j ACCEPT
	/sbin/iptables -A INPUT -p tcp --dport 443 -j ACCEPT
	/sbin/iptables -A INPUT -p tcp --dport 3311 -j ACCEPT
	/sbin/iptables -A INPUT -p tcp --dport 3312 -j ACCEPT
	/sbin/iptables -A INPUT -p tcp --dport 3313 -j ACCEPT
	/sbin/iptables -A INPUT -p tcp --dport 21 -j ACCEPT
	/sbin/iptables -A INPUT -p tcp --dport 22 -j ACCEPT
	/etc/rc.d/init.d/iptables save
}
function installkangle(){
	wget -q $DOWNLOAD_URL/sh/kangle.sh -O kangle.sh;sh kangle.sh $kangle_var $kangle_completed | tee $files/log/kangle.log
}
function installep(){
	wget -q $DOWNLOAD_URL/sh/ep.sh -O ep.sh;sh ep.sh | tee $files/log/ep.log
	#mv /vhs/kangle/ext/tpl_php52/ /vhs/kangle/ext/php53
	#wget -q $DOWNLOAD_URL/config_file/admin_foot.html -O admin_foot.html
	#mv admin_foot.html /vhs/kangle/nodewww/webftp/admin/view/default/common/foot.html
	#wget -q $DOWNLOAD_URL/config_file/vhost_foot.html -O vhost_foot.html
	#mv vhost_foot.html /vhs/kangle/nodewww/webftp/vhost/view/default/common/foot.html
	#wget -q $DOWNLOAD_URL/config_file/main.html -O main.html
	#mv main.html /vhs/kangle/nodewww/webftp/admin/view/default/main.html
	#wget -q $DOWNLOAD_URL/config_file/kfinfo.html -O kfinfo.html
	#mv kfinfo.html /vhs/kangle/nodewww/webftp/vhost/view/default/kfinfo.html
	#rm -rf /vhs/kangle/nodewww/webftp/dns
}
function installftp(){
	wget -q $DOWNLOAD_URL/sh/ftp.sh -O ftp.sh;sh ftp.sh | tee $files/log/ftp.log
}
function installsql(){
	wget -q $DOWNLOAD_URL/sh/sql.sh -O sql.sh;sh sql.sh $mysql_root_password | tee $files/log/sql.log
}
function installpm(){
	wget -q $DOWNLOAD_URL/sh/pm.sh -O upm.sh;sh upm.sh | tee $files/log/upm.log
}
function installfp(){
	wget -q $DOWNLOAD_URL/sh/fixphp.sh -O fixphp.sh;sh fixphp.sh | tee $files/log/fxp.log
}
function install_compile(){
	wget -q $DOWNLOAD_URL/sh/php53.sh -O php53.sh;sh php53.sh | tee $files/log/php53.log
	if [ "$select_var" = "allc" ]; then
	wget -q $DOWNLOAD_URL/sh/php54.sh -O php54.sh;sh php54.sh | tee $files/log/php54.log
	wget -q $DOWNLOAD_URL/sh/php55.sh -O php55.sh;sh php55.sh | tee $files/log/php55.log
	wget -q $DOWNLOAD_URL/sh/php56.sh -O php56.sh;sh php56.sh | tee $files/log/php56.log
	wget -q $DOWNLOAD_URL/sh/php7.sh -O php7.sh;sh php7.sh | tee $files/log/php7.log
	wget -q $DOWNLOAD_URL/sh/php71.sh -O php71.sh;sh php71.sh | tee $files/log/php71.log
	wget -q $DOWNLOAD_URL/sh/php72.sh -O php72.sh;sh php72.sh | tee $files/log/php72.log
	wget -q $DOWNLOAD_URL/sh/php73.sh -O php73.sh;sh php73.sh | tee $files/log/php73.log
	fi
}
function install_completed(){
	wget -q $DOWNLOAD_URL/sh/php.sh -O php.sh
	sh php.sh php53| tee $files/log/php.log
	if [ "$select_var" = "all" ]; then
	sh php.sh php54| tee $files/log/php.log
	sh php.sh php55| tee $files/log/php.log
	sh php.sh php56| tee $files/log/php.log
	sh php.sh php70| tee $files/log/php.log
	sh php.sh php71| tee $files/log/php.log
	sh php.sh php72| tee $files/log/php.log
	sh php.sh php73| tee $files/log/php.log
	fi
}
function installend(){
	rm -rf /tmp/*
	rm -rf /root/hl-tmp/*
	wget -q $DOWNLOAD_URL/complete.sh -O complete.sh;sh complete.sh $mysql_root_password
	exit 1
}
stat_iptables
if [ "$mysql_root_password" != "no" ]; then
installsql
fi
installkangle
installep
installftp
if [ "$select_var" = "allc" ]||[ "$select_var" = "defaultc" ]; then
install_compile
else
install_completed
fi
installend