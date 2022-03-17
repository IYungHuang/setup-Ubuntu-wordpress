#!/bin/bash

mkdir -m 755  /var/www/html/net2ftp


unzip net2ftp_v1.3.zip -d /var/www/html


mv /var/www/html/net2ftp_v1.3/files_to_upload/* /var/www/html/net2ftp
chmod 777 /var/www/html/net2ftp/temp
sed -i 's/20000000/20480000/1' /var/www/html/net2ftp/settings.inc.php

rm -rf /var/www/html/net2ftp_v1.3*

chown -R owner /var/www/html/net2ftp 
chgrp -R owner /var/www/html/net2ftp

service apache2 restart

IP=$(ifconfig enp0s3 | grep 'inet '| sed 's/^.*inet //g' | cut -d ' ' -f1) 
echo Your IP is $IP
echo Please run following commend : firefox $IP/net2ftp


