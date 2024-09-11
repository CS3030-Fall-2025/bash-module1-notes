#! /usr/bin/bash
printf "Enter your name:\n"
read name

if [[ -z $name ]]
then
    # >&2 for stderr
    echo "No name entered" >&2
    exit 1

fi 

printf "Hello %s\n" $name
printf "Let's play a game."

# Ask for two numbers neither of which is less than 10 or greater than 20
printf "Enter a number between 10 and 20: "
read number # captures the input
# two bash comands have to be separated by a semicolon ;
if (( number > 20 ))
then
    # integers in printf use %d
    printf "the number %d is too high\n" "$number" >&2
    exit 1
elif (( number < 10 )) ; then
    printf "The number %d is too low\n" "$number" >&2
    exit 1
else
    printf "You entered %d as a number\n" "$number"
fi 

exit 0
