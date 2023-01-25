#!/bin/bash

###########################################
##### USE THIS SCRIPT ON AMAZON LINUX #####
###########################################

yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mysql
systemctl start httpd
systemctl enable httpd
systemctl start mysql
systemctl enable mysql

echo "
<html>
 <head>
  <title>My first page HTML</title>
 </head>
 <body>
  <h1>My first page HTML.</h1>
  <p>Apache running $(hostname -f)</p>
 </body>
</html>
" > /var/www/html/index.html

usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
