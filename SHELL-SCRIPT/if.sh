#!/bin/bash

###################

# Description: count the given character in the given word
# Author: Vleena
# Version:V2

#####################
set -eo pipefail
c=0
read -p "Enter the word:" w
read -p "Enter the letter to be serached:" l
# split the word into the characters
for i in $(echo "$w" | grep -o .);
do
	if [[ "$i" == "$l" ]]; then
		((c=c+1))
	fi
done

echo "count: $c"
