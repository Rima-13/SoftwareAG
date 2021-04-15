#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script sets the open file limit
#date modified: 15/04/21
#######################

#login as root

if [ `whoami` == "root" ]
then

	#check previous value
	cat /proc/sys/fs/file-max


	#set limit
	sysctl -w fs.file-max=10000

	echo "open file limit set"

	#check changes
	cat /proc/sys/fs/file-max

else
	echo please login as root


fi