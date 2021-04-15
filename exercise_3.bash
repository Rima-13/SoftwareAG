#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script finds a file and copies the file
#date modified: 15/04/21
#######################

#login as root

#finding file

find data -name sample.txt

#copy file
if [ $? -eq 0 ]
then 
	cp /data/sample.txt  /tmp/found.txt 
else
	echo "file does not exist"
fi