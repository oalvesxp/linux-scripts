#!/bin/bash

read -p "Insert your name: " name
read -p "Insert the database name: " db
read -p "Insert the database user: " dbuser
read -p "Insert the host IP from database: " host

echo $name $db $dbuser $host
