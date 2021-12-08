#!/bin/bash
#if we assign a name to a set of data is called as variable
# Syntax : VARNAME=DATA
a=100    #number
b=apple  #string  (string means carrecturs and all)
c=ture   #boolean
#shell does not have any data type by detauls
#Access the variable , variable will be access in two ways

# 1. $VARNAME , $ preceding to the variable name, ex: $a to access a variable
# Syntax : VARNAME=DATA
a=100    #number
b=apple  #string  (string means carrecturs and all)
c=ture   #boolean

#shell does not have any data type by detauls

#Access the variable , variable will be access in two ways

# 1. $VARNAME , $ preceding to the variable name, ex: $a to access a variable

#2. $(VARNAE), $ procceding along with variable bounded in flower braces.
ex:- $(a)

## best practice is using along with flower bracess

echo a = $a
echo a in currency = ${a}USD

#usage
#1.if we want to use a value in multiple places then we go with variables
#2.this brings and advantage of changing the value in one place and it impact in multiple places one of the major advantage
 #you can declare the variable to use it in multiple places.

DATE=2021-12-08
echo Good Morning, Welcome, Today date is ${DATE}
##2. usecase: if we need to get the data dynamically we use variables to store that data and we refer
  #1. Command substitution - VAR=$(command)
  #2. Arthimetic substitution VAR=$((expression))

#date help  run date help command it has surtence optins  %F we can see that date

DATE=$(date +%F)
echo good morning welcome, today date is ${DATE}

ADD=$((2+3))
echo ADD = ${ADD}