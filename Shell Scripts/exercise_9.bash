#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script updates umask value of tuser
#date modified: 15/04/21
#######################

#login as tuser


if [ `whoami` == "tuser" ]
then
	echo previous umask value: $(umask)

	umask 644 	

	echo updated umask value: $(umask)

else
	echo please login as tuser

fi

