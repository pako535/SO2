#!/bin/bash

current_path=$(pwd)
echo $current_path
cd "$1"
current_path=$(pwd)
echo $current_path
for i in *
do 
   
    if [ -h $i ]
    then
        if [ $(readlink $i ) == $2 ]
        then
            echo "$i"
        fi
    fi
done