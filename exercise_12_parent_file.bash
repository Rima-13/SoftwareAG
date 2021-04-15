#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script runs as parent process, calls child process and completes exec after child process 
#date modified: 15/04/21
#######################

echo "this is parent process, it prints values from 1 to 10"

i=1

while [ $i -le 10 ]
do
	echo loop inside parent process count: $i
	sleep 1
	i=`expr $i + 1`
	
	if [ $i -eq 3 ]
	then
	echo "calling child process, breaking parent process for 10 seconds"
	
	#running child process in background
	./child_file.sh &

	#wait for child process to exit with help of process id
	wait $!
	echo child process completed execution with exit_status $?
	fi
done