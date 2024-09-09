# CS 3030 Bash Programming Assignment 1

## Purpose and Skills

In this first bash assignment, we will practive working with our development environment as well as put in to practice the skills we learned this module. This lab will help you practice the following skills that are essential to navigate a Linux system and basic Bash concepts.

- Take user input
- Test input with conditional statements
- Call functions
- Command line arguments. It also introduces running commands to gather data.

Note: Your final script should be able to run on the class server as well as in the CS Linux server (Icarus)

This lab will also help you to become familiar with the following important content knowledge in CS:

- Working in a Linux system
- Review basic programming concepts
- Use Source Version Control (SVC) such as `git`

## Task 1

Your first task consist of informing the user what the script can do.

For that, your script should suppor the `--help` option. If you call your script
with this option, print a  `Help` text that will display the following
message to standard output

```bash
./hw1.sh --help
                                                              
****************************************************************
* Welcome to the help menu!                                    *
* In this script you are able to choose between 1, or 2.       *
* 1. Check which user is running the script                    *
* 2. Check if the script is running in the icarus server       *
*                                                              *
*  Thank you for choosing my Script                            *
****************************************************************
```

## Task 2

Next, create a loop that runs up to `3 times` printing the following choices:

```bash
Welcome to my first script for CS3030
My name is hvalle # use $USER variable
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script

```

Capture the user input and using an `IF` statement test the input choice. If the user enters the wrong choice display an error message.

For this task we are only interested in testing the loop and the wrong choice.

### Sample Input

```bash
$ ./hw1.sh 
Welcome to my first script for CS3030
My name is hvalle
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script
3
Sorry not a valid input

Welcome to my first script for CS3030
My name is hvalle
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script
4
Sorry not a valid input

Welcome to my first script for CS3030
My name is hvalle
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script
5
Sorry not a valid input
Bye
```

## Task 3

Your next task is to test the first choice which test which user is running this script. Most Linux servers have an environment variable called `$UID`.
If the numerical value of `$UID` is `0`, then the user is considered a `root` or `sudo` user, otherwise a regular user.

To test this choice, option use a `CASE` statement.

### Sample Output

```bash
./hw1.sh
                                    
Welcome to my first script for CS3030
My name is hvalle
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script
1
You are not the root user. You are [501] user

Welcome to my first script for CS3030
My name is hvalle
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script
0
Bye
```

Note: To test the `root` option, run the script with `sudo` access: 

```bash
# run script as "root"
$ sudo ./hw1.sh
```

## Task 4

The last task consist in testing the second choice. To get the machine or host name use the `hostname` script. If you are running the script inside de icarus server, this script prints the hostname to standard output: 

```bash
# runnin locally
$  hostname
Hugos-MacBook-Pro.local
```

```bash
# runnin inside icarus sever
$  hostname
icarus
```

You should capture the output from this script into a variable and using an `IF` statement test if the script is running in your local
machine or the icarus server

### Sample Output
```bash
$ ./hw1.sh
Welcome to my first script for CS3030
My name is hvalle
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script
2
Sorry you are not running on icarus server
You are running your script on Hugos-MacBook-Pro.local

Welcome to my first script for CS3030
My name is hvalle
What would you like to do? (1 or 2):
1. Check which user is running the script
2. Check if the script is running in the icarus server
0. Exit the script
0
Bye
```

## Code Pseudocode
The following is a sample pseudocode for this assignment
```c
// Check for --help input param, if True print message
guess = 3
while(guess)
{
    // Display menu
    // Capture input
    if(input == 1)
    {
        // Use CASE statement to test UID

    }
    else if (input == 2)
    {
        // Use IF statement to test hostname
    }
    else if (input == 0)
    {
        // exit
    }
    else
    {
        // Invalid choice
    }
    guess--;
}
```
