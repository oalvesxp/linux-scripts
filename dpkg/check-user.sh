#!/bin/bash

me="$(whoami)"
read -p "Digite o username: " user
check="$(cat /etc/passwd | grep $user | cut -d ":" -f1)"

if [ "$user" = "$me" ]; then
	echo "O usuário $me está logado."
	cat /etc/passwd | grep $me
 elif [ "$user" = "$check" ]; then 
	echo "O usuário $user existe."
	cat /etc/passwd | grep $user
 else
	echo "O usuário não existe."
fi
