#!/bin/bash

#############################################
# Description:- create a directory inside that directory 4 sub directories and one read.me file and provide 777 permission to it
# Author:- Vleena
# Version:- V1

############################################

read -p "Enter the parent directory name: " d

mkdir $d

cd $d

read -p "Enter the sub directory 1 name: " d1

read -p "Enter the sub directory 2 name: " d2


read -p "Enter the sub directory 3 name: " d3


read -p "Enter the sub directory 4 name: " d4

mkdir $d1 $d2 $d3 $d4

touch read.me

chmod -R 777 *
