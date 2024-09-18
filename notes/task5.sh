#! /usr/bin/bash

guess=1

while [[ $guess -le 3 ]]
do
#    printf "Enter the file name you are looking for in %s\n" "$PWD"
    printf "Enter the file name you are looking for in $PWD\n"
    read infile 
    # test if file exists
    if [[ -e $infile ]]
    then
        printf "Found %s file in this folder\n" "$infile"
        break
    else
        printf "Could not find %s in this folder\n" "$infile"
    fi
    #update guess
    guess=$(( $guess + 1 ))

done

echo "Done"