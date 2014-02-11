#!/bin/bash

mysql_install_db

/usr/bin/mysqld_safe &
sleep 5

# set root password to 'root'
mysqladmin -u root password root

# grant root user all access
echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql -u root -proot -h localhost

# keep process running
tail -f /var/log/mysql/mysql.log
