#! /usr/bin/bash
#Print all postional Parameters $@

echo "You are running with $@"

# Print total number of parameters $#
#If it does not count the program itself ($0)
echo "$0 fname lname"

if [[ $# -eq 2 ]]
then 
    echo "You are good to go"
    fname=$1
    lname=$2
else
    echo "Enter your first name: "
    read fname
    if [[ -z "$fname" ]]
    then
        echo "No first name was entered"
        exit 1
    fi
    echo "Enter your last name: "
    read lname
    
    if [[ -z "$lname" ]]
    then
        echo "No last name was entered"
        exit 1
    fi

 #   echo "Good Bye. You have the incorrect number of parameters"
 #   echo "You have this number of parameters: $#"
 #   echo "Usage: $0 fname lname"
 #   exit 1

fi


# Print values with $
echo "Hi $fname $lname"

exit 0