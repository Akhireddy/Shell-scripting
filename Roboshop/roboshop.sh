#!/bin/bash
##check whether the script is running as root user or not
USER_UID=$(id -u)
if [ ${USER_UID} -ne 0 ]; then
   echo -e "\e[1;31myou should be a root user to perform this script\e[0m"
   exit
fi

COMPONENT=$1
if [ -z "COMPONENT" ]; then
   echo -e "\e[1;31mComponent Input Missing\e[0m"
   exit
fi

if [ ! -e components/${COMPONENT}.sh ]; then
   echo -e "\e[1;31mGiven Component script does not exists\e[0m"
   exit
fi

bash components/${COMPONENT}.sh