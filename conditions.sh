#!/bin/bash
#conditions are two types
#1. is if command (mostly used)
#2. case command (Rarely used)
# if command
# 1. Simple if
#1. "if" command (mostly used)
#2. case command (Rarely used)
# if command
# 1. Simple if

#syntax:
#if [ expression ]; then
# commands

#fi
# if expression is true then cmmands will be executed

# 2. If Else
# syntax:

#if [ expression ]; then
# commands-1
#else
# commands-2
#fi
# if expression is true then command-1 will be execute, if not command-2 will be executed

#3. Else if

# Syntax:

#if [ expression-1 ]; then
#commands-1
#elif [ expression-2 ]; then
#commands-2
#else
# commands-else
#fi

#if expression is true then command-1 will be execute, if not command-2 is true then command-2 will be executed if both
# the expression are false then commands-else will be executed.
#what is exprepressions, exprepression also categrise into 3 times,
#1. strings
#2. numbers
#3.files


#expressions on below
#1. strings
   # Operators : =, ==.!= (notequel to), -z
   # Ex: [ abc ==ABC ]
#2. Numbers
  #Operators : -eq (equal), -ne, -gt, -ge, -lt, -le  (less than or less equal to)
   # ex [1 -eq 0]
#3. Files
   #Operators: -eto check if files exists or not
     # (somany are there can be referred from documentation when needed)

read -p 'Enter your age:' age
if [ "${age}" -lt 18 ]; then
  echo you are a senior citizen
else
  echo you are Major
fi

## Note when you use variables in expressions of if statement,Always double quote them

