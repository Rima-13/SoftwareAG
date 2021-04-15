#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script creates, runs a service 
#date modified: 15/04/21
#######################

#login as root
if [ `whoami` == "root" ]
then

#write a service file and save it under /etc directory with script details to be executed
echo
	"[Unit]
	Description="This service calls a script that executes 10 times"

	[Service]
	WorkingDirectory=~/Desktop
	ExecStart=~/Desktop/servicescript.bash
	Restart=on-failure
	
	[Install]
	WantedBy=default.target" > /etc/systemd/system/ex13.service

#include new service file
sudo systemctl daemon-reload


#enabling service on every reboot
sudo systemctl enable ex13.service

#start service
sudo systemctl start ex13.service

#check status 
sudo systemctl status ex13.service


else
	echo login as root 
	
fi	