#!/bin/bash

mkdir -m 755  /var/www/html/wp
unzip wordpress-5.8.1-zh_TW.zip -d /var/www/html
mv /var/www/html/wordpress/* /var/www/html/wp

rm -rf /var/www/html/wordpress*

chown -R owner /var/www/html/wp
chgrp -R owner /var/www/html/wp

service apache2 restart

IP=$(ifconfig enp0s3 | grep 'inet '| sed 's/^.*inet //g' | cut -d ' ' -f1) 
echo Your IP is $IP
echo Please run following commend : firefox $IP/wp


