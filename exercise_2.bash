#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script creates soft link 
#date modified: 15/04/21
#######################

#login as root

#create soft link

ln -s /data/sample.txt /tmp/sample.txt

#check is soft link is created
ls -l /tmp 
