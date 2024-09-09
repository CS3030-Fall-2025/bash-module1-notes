#! /usr/bin/bash

# Ask for two numbers neither of which is less than 10 or greater than 20
printf "Enter a number between 10 and 20: "
read number # captures the input
# two bash comands have to be separated by a semicolon ;
if [[ "$number" -gt 20 ]]; then
    # integers in printf use %d
    printf "the number %d is too high\n" "$number"
elif [[ "$number" -lt 10 ]] ; then
    printf "The number %d is too low\n" "$number"
else
    printf "You entered %d as a number\n" "$number"
fi 

exit 0
