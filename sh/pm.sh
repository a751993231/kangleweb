#!/bin/bash
files="/root/s-hell"
source $files/config
source $files/iver
PREFIX="/vhs/kangle/nodewww/dbadmin"
PMV="$PREFIX/mysql/pm$PHPMY"
rm -rf $PREFIX/mysql
mkdir $PREFIX/mysql
cd $PREFIX
wget $DOWNLOAD_FILE_URL/file/phpMyAdmin-$PHPMY-all-languages.tar.bz2 -O phpMyAdmin-$PHPMY-all-languages.tar.bz2
tar xjf phpMyAdmin-$PHPMY-all-languages.tar.bz2
mv -f $PREFIX/phpMyAdmin-$PHPMY-all-languages/* $PREFIX/mysql
touch $PMV
find $PREFIX/mysql/ -type f -print |xargs chmod 644;
find $PREFIX/mysql/ -type d -print |xargs chmod 755;
rm -rf /root/ws/wssh/mysql* u* p*
clear
echo -e "
————————————————————————————————————————————————————
已为您覆盖安装完成 phpMyAdmin-"$PHPMY"
感谢您的使用
————————————————————————————————————————————————————"
