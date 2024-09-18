#! /usr/bin/bash

#########################################################
# Help                                                  #
#########################################################
function Help 
{
    echo "***************************************************"
    echo "* Welcome to the Help screen                      *"
    echo "* In this script you can choose either 1 or 2     *"
    echo "* 1. Check what the USER name is                  *"
    echo "* 2. Check what is the current working directory  *"
    echo "* This is the end of the Help menu                *"
    echo "***************************************************"
}

###### Task 1
# if --help is passed in as a parameter
if [[ $1 == "--help" ]]
then
    #Call the help function
    Help 
    exit 0
fi

number=3
guess=0

while [ "$guess" -ne $number ]
do 
    echo "Enter a choice of 1 to show username"
    echo "Enter a choice of 2 to show working directory"
    echo "Enter a choice of 0 to quit"
    read CHOICE
    if [[ $CHOICE == "1" ]]
    then
    # Display Menu Options
        echo
        echo "The username is $USER"
        break
    elif [[ $CHOICE == "2" ]]
    then
        #echo
        echo "The current working directory is $PWD"
        break
    elif [[ $CHOICE == "0" ]]
    then
        #echo
        echo "You have chosen to quit the program"
        break
    else
        #echo
        echo "Sorry you did not enter a valid option"
    # Update guess
        guess=$((guess+1))
        echo "This is the number you entered: $CHOICE"
        echo "You are on attempt number $guess. Please enter a valid choice."
    fi

    
done

echo "Bye"
exit 0