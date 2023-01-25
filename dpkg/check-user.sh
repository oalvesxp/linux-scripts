#!/bin/bash

me="$(whoami)"
read -p "Digite o username: " user
check="$(cat /etc/passwd | grep $user | cut -d ":" -f1)"

echo $user
echo $me
echo $check
