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