#!/bin/bash

#current_path=$(pwd)
#echo $current_path
cd "$2"
#current_path=$(pwd)
#echo $current_path

find $2 -user $1 -executable
