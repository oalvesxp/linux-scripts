#!/bin/bash

read -p "Insert the database name: " db
read -p "Insert the database user: " dbuser
read -sp "Insert the user password: " dbpasswd
read -p "Insert the host IP from database: " host

mysqldump --single-transaction -h$host $db -u$dbuser -p$dbpasswd | gzip -9 $HOME/$db-`date +%d-%m-%y`.sql.gz
zcat $HOME/$db-`date +%d-%m-%y`.sql.gz | tail -n1

echo "Take your dump on $HOME/$db-`date +%d-%m-%y`.sql.gz" 
