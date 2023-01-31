#!/bin/bash

# @file: passwd-gen.sh
# @author: Osvaldo Alves
# @date: 31/01/2023
# @description: Script to genenrate the security password.
# @use: $ sh to-extract.sh <number-of-characters>


if [ $# -eq 1 ]; then
    less -f /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | head -c"${1:-$1}"
    echo "\n"
else
    less -f /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | head -c"${1:-48}"
    echo "\n"
fi
