#! /usr/bin/bash

dir=$HOME/bin
# -d of ls is for directory
if [[ -d "$dir" ]] && cd "$dir"
then
    echo "Directory exists"
    echo "Here I am $PWD"
else
# if directory does not exist, create the directory and move to it
    echo "Creating $dir"
    mkdir $dir && cd $dir
    echo "Here I am $PWD"
fi

exit 0