#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script loops until loop.txt file is created 
#date modified: 15/04/21
#######################

while true
do
	if [ -f data/loop.txt ]
	then
		echo "file created"
		exit 1
	fi
done