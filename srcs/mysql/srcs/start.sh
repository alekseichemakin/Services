#!/bin/sh

rc default
/etc/init.d/mariadb setup
rc-service mariadb start
echo "CREATE DATABASE wordpress;" | mysql
echo "GRANT ALL ON *.* to 'mqueen'@'%' IDENTIFIED BY '123' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql
mysql wordpress < wordpress.sql
rc-service mariadb stop
/usr/bin/mysqld_safe