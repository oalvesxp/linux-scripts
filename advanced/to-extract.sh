#!/bin/bash

# @file: to-extract.sh
# @author: Osvaldo Alves
# @date: 31/01/2023
# @description: Script to extract all files type on linux env.
# @use: $ sh to-extract.sh <file-name>.ext

extractFiles(){
   if [ -f "$1" ] ; then
      case $1 in
	 *.tar.gz)	tar -xvzf "$1" ;;
	 *.rar)		unrar x "$1" ;;
         *.gz)		gunzip -v "$1" ;;
         *)
	   echo "This file isn't supported: '$1'..." ;;
      esac
   else
      echo "'$1' isn't a valid file!"
   fi
}

if [ $# -eq 0 ] ; then
   echo "No arguments provided..."
   echo "Usage: sh to-extract.sh <file-name>.ext"
   echo "                        <file-name>.sql.gz"
   exit 1
fi

while [ $# -gt 0 ]
do
   extractFiles "$1"
   shift 1
done
