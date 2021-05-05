#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script updates umask value of tuser
#date modified: 15/04/21
#######################


#login as root
#install apache2 sudo app-get install apache2


if [ `whoami` == "root" ]
then

	#stop apache service
	sudo systemctl stop apache2

	#configure port 
	sed -i 's/.*Listen.*/Listen 8080/' /etc/apache2/ports.conf

	#write to index.html (webpage)
	echo "Welcome to Home Page" > /var/www/html/index.html
	
	#start apache service
	sudo systemctl start apache2



else
	echo please login as root

fi

