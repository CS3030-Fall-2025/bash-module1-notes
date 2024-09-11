#! /usr/bin/bash

#Write a script that creates a directory called bpl inside of $HOME.
#Populate this directory with two subdirectories called: bin and scripts
printf "Creating directory bpl inside $HOME\n"
cd $HOME  # change to the directory of $HOME
mkdir bpl  # create the bpl directory
cd bpl # change to the directory bpl
printf "Creating subdirectories of bin and scripts\n"
mkdir bin scripts # create the two subdirectories of bin and scripts
ls -l


# Remove the subdirectories we created
printf "Deleting subdirectories\n"
rmdir bin scripts
cd ..
printf "Delete the bpl directory inside of $HOME\n"
rmdir bpl
ls -l


exit 0