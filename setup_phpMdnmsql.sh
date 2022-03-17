#!/bin/bash

mkdir -m 755  /var/www/html/phpMyAdmin

unzip phpMyAdmin-4.9.7-all-languages.zip -d /var/www/html

mv /var/www/html/phpMyAdmin-4.9.7-all-languages/* /var/www/html/phpMyAdmin
sed -i 's/2M/20M/1' /etc/php/7.4/apache2/php.ini

rm -rf /var/www/html/phpMyAdmin-4.9.7*

chown -R owner /var/www/html/phpMyAdmin 
chgrp -R owner /var/www/html/phpMyAdmin

echo -e Y '\r' | apt install mysql-server
echo -e Y '\r' | apt install mysql-client
echo -e Y '\r' | apt install libmysqlclient-dev
echo -e Y '\r' | apt install php-mysql
echo -e Y '\r' | apt install php-mbstring
mkdir -m 777 /var/www/html/phpMyAdmin/tmp

service apache2 restart

IP=$(ifconfig enp0s3 | grep 'inet '| sed 's/^.*inet //g' | cut -d ' ' -f1) 
echo Your IP is $IP
sleep 3
echo Please run following commend : firefox $IP/phpMyAdmin
echo to check installation is completed and properly.
echo Please run mysql to creat new user
echo \& give user above all priviledges.


