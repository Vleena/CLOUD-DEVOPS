#!/bin/bash

###########################
# Author: Vleena
# Description:

#########################
echo

echo "############ WELCOME TO THE RHEL 8.10 SERVER ############"

echo

echo "Hostname: $(hostname)"
echo "IP: $(hostname -I | awk '{print $1}')"
echo "Username: $(whoami)"
echo "Date: $(date)"

echo

echo "Disk Usage:"
echo "============================================================="
# echo "$(df -h | awk 'NR==1 || NR==6')"


echo "$(df -h | grep -E 'Filesystem|rhel-root')"
echo

echo "RAM:"
echo "============================================================="
echo "$(free -h)"
echo
echo "CPU Usage:"
echo "=============================================================" 
echo "$(top -bn1 |grep -E '%Cpu')"
echo
