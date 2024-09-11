#! /usr/bin/bash

# ts=`date +%Y-%m-%d`

ts=`date +%Y-%m-%d`

log='names_'$ts'.log'

printf 'What is your name?\n'
#Take input from user
read name

printf 'Hello %s\n' $name >> $log
echo 'Today is '$ts >> $log

exit 0