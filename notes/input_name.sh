#! /usr/bin/bash

# Read and check input
echo "What is your name?"
# read user input
read name
# Test if variable is not "null"
if [[ -z "$name" ]]
then
    echo "No name was entered"
    exit 1 # set failed code
else
    echo "Hello $name"
fi 

exit 0
