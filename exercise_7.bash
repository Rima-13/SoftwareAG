#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script creates swap file
#date modified: 15/04/21
#######################

#login as root

if [ `whoami` == "root" ]
then
	sudo fallocate -l 512M /swapfile
	
	sudo mkswap /swapfile
	
	sudo swapon /swapfile	
	
else
	echo please login as root

fi
