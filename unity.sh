#!/bin/bash

cd ~/Documents/Unity/$1
shift
if [ ! -z $1 ];
then
    case "$1" in
        -a) to_open=$(find Assets/Scripts/ -type f -name "*.cs")
        shift ;;
    esac
    for i in $*
    do
        to_open="Assets/Scripts/$i $to_open"
    done
else
    to_open=$(find Assets/Scripts/ -type f -name "*.cs")
fi
    
vim -p $to_open 
