# Day 6 Notes

## Shell Scripting

### Shell Script
- File containing Linux commands executed automatically
- Used for automation in Linux systems

### .sh File
- Common extension for shell scripts

## Shebang

### #!/bin/bash
- Called shebang
- Tells Linux to use Bash interpreter to run script

### /bin
- Directory containing essential Linux programs

### Bash
- Shell and scripting language used in Linux

## Script Execution

### chmod +x
- Adds execute permission to script

### ./script.sh
- Runs executable shell script

## Variables

### Variable
- Stores temporary data in script

Example:
name="Sanu"

### Using Variables
- Access variable using $

Example:
echo "$name"

## User Input

### read
- Takes input from user and stores it in variable

Example:
read age

## If Conditions

### if
- Starts condition block

### then
- Executes commands if condition is true

### else
- Executes alternative commands

### fi
- Ends if block

## Comparison Operators

| Operator | Meaning |
|---|---|
| -eq | equal to |
| -ne | not equal to |
| -gt | greater than |
| -lt | less than |
| -ge | greater than or equal |
| -le | less than or equal |

## Loops

### for Loop
- Repeats commands automatically

Example:
for i in 1 2 3
do
    echo "Hello"
done

## Dynamic Loop

Example:
for (( n=1; n<=i; n++ ))

### n++
- Increases value by 1

## Important Concepts Learned

- Difference between manual commands and automation
- Bash scripting basics
- Variables and dynamic data
- User interaction through scripts
- Decision-making using if conditions
- Repetition using loops
- Combining conditions and loops together
- Importance of syntax and spacing in Bash