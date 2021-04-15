#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script creates directory,file, and stores content
#date modified: 15/04/21
#######################

#login as root

mkdir /data

touch /data/sample.txt

echo "this is sample file" > /data/sample.txt
