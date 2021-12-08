#!/bin/bash

#printing in shell can be done by using echo command

#Syntax : echo INPUT MESSAGE

echo Hello
echo Hello World

#Example from project
echo Installing Nginx
echo Starting Nginx service

## we can print text in colors
#Syntax : echo -e "\e[COLmMESSAGE\e[0m"
## -e -To enable \e
## \e[ - to enable colors
## COL - color code
## m --end of syntax
## 0 - to disable color
## color codes
# REd  31
# Green 32
# yellow 33
# blue   34
echo -e "\e[31mHello in Red Color\e[0m"
echo -e "\e[32mHello in Green Color\e[0m"
echo -e "\e[33mHello in Yellow Color\e[0m"
echo -e "\e[34mHello in Blue Color\e[0m"
echo -e "\e[35mHello in Magenta Color\e[0m"
echo -e "\e[31mHello in Red Color\e[0m"
echo -e "\e[31mAkhi \e[0m"
# to blink in bold
echo -e "\e[32mAkhi\e[1:31mBold Red\e[0m"