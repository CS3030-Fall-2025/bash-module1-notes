#! /usr/bin/bash
num=1
clue=5
#Test while loop
#Syntax: While <condition>
# do
#   while ($num < $clue) {print it; $num++}
while [[ $num -lt $clue ]] ; do 
    echo $num
    # when variables are number, we will use (()) instead of [[]]
    num=$(( num+1 ))
done

exit 0