#!/bin/bash

set -e

read -p "Insert the database name: " db
read -p "Insert the database user: " dbuser
read -sp "Insert the user password: " dbpasswd
read -p "Insert the host IP from database: " host

filename=$db-`date +%d-%m-%y`.sql.gz
dumpdir=$HOME

sudo mysqldump --single-transaction --verbose -h$host $db -u$dbuser -p$dbpasswd | gzip -9 > $dumpdir/$filename
zcat $dumpdir/$filename | tail -n1

echo "Take your dump on $dumpdir/$filename"
