#!/bin/bash

apt install net-tools
apt install ufw
ufw enable
ufw allow ftp
ufw allow ssh
ufw allow http
echo -e Y '\r' | apt install synaptic
echo -e Y '\r' | apt install openssh-server
echo -e Y '\r' | apt install vsftpd
echo -e Y '\r' | apt install apache2
echo -e Y '\r' | apt install vim
apt update
echo -e Y '\r' | apt install php libapache2-mod-php
mkdir /var/ftp
cat /home/owner/supb/localrt > /var/ftp/owner
cat /home/owner/supb/change_vsftpconf >> /etc/vsftpd.conf
cat /home/owner/supb/phpinfo.php > /var/www/html/phpinfo.php
chown owner /var/www/html
chgrp owner /var/www/html
service vsftpd restart
su owner
echo Task Complete!
echo Please run Firefox @ubuntu server
echo to check server basic condition...
sleep 2
IP=$(ifconfig enp0s3 | grep 'inet '| sed 's/^.*inet //g' | cut -d ' ' -f1) 
echo Your IP is $IP
echo Please run following commend : firefox $IP/phpinfo.php







