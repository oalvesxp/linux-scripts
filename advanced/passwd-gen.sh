#!/bin/bash

# @file: passwd-gen.sh
# @author: Osvaldo Alves
# @date: 31/01/2023
# @description: Script to genenrate the security password.
# @use: $ sh to-extract.sh <number-of-characters>

passwdGen(){
   echo "Password without special characters:"
   less -f /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c"${1:-48}"
   echo "\n"

   echo "Password with special characters:"
   less -f /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | head -c"${1:-$1}"
   echo "\n"
}

if [ $# -eq 0 ]; then
   echo "No arguments provided..."
   echo "Usage: sh passwd-gen.sh <number-of-characters>"
   echo "       sh passwd-gen.sh 12"
   exit 1
fi

while [ $# -gt 0 ]
do
   echo "Generating passwords... \n"
   sleep 1
   passwdGen "$1"
   shift 1
done
