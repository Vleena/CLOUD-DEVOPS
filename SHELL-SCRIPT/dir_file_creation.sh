#!/bin/bash

####################
# Description:- create a directory and inside the directory create two files and provide all the permissions to the file.
# Authour:- Vleena
# Version:- V1

#####################

read -p "Enter the Directory name: " d

mkdir $d

cd $d

read -p "Enter first file name: " f1
read -p "Enter second file name: " f2

touch $f1 $f2

chmod 777 *




