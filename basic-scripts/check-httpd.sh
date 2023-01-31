#!/bin/bash

check_url=$(curl --write-out %{http_code} --silent --output /dev/null www.google.com)

if [ $check_url -ne 200 ]; then
    echo "Houve um problema com o servidor, tentando reiniciá-lo  $(date +%F\ %T)" >> /var/log/issues-httpd.log
    systemctl restart httpd
fi
