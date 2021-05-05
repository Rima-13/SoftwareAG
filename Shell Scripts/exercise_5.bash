#!/bin/bash

#######################
#author:Rima
#date created: 15/04/21
#description: this script finds file containing localhost and stores stdout and stderr to two different files
#date modified: 15/04/21
#######################

#find localhost
find /etc -name localhost > /tmp/find.out 2> /tmp/find.err