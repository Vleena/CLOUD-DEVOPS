#!/bin/bash

###############
# Description: print the numbers which are divisible by 3 and 5 but not by 15
# Author: Vleena
# Version: V1

############


for i in {1..10};
do
	if (( (i % 3 == 0 || i % 5 == 0) && (i % 15 != 0) )); then
		echo "$i"
	fi
done
