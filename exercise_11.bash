#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script parses a json file and extract value of a field from it 
#date modified: 15/04/21
#######################

#specifying path to the json file
path="~/Desktop/file.json"

if [ -f $path ]
then 
	echo file exists 
	
	more $path

	echo enter field to extract
	
	read field
	
	echo extracting '$field' field from the json file
	
	jq '.$field' $path

	
	
else
	echo specify a different file path
fi