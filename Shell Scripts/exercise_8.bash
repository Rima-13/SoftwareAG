#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script adds user with directory and adds user to a group
#date modified: 15/04/21
#######################

#login as root

if [ `whoami` == "root" ]
then

	#create group 
	groupadd testgroup

	#add user with specified home directory
	useradd -m -d /home/testuser tuser

	#add user to testgroup 
	usermod -g testgroup tuser

else
	echo please login as root

fi

