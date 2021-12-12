#!/bin/bash
# yum install nginx -y
# systemctl enable nginx
# systemctl start nginx
#Let's download the HTML content that serves the RoboSHop Project UI and deploy under the Nginx path.

# curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
#Deploy in Nginx Default Location.

# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-master static README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf
#Finally restart the service once to effect the changes.

# systemctl restart nginx
#all below stac_check copied to comman.sh file since same info need to use in all file.so created common file coping from there it and putting source file
#source is nothing but import , like export command
source componenets/common.sh
#LOG_FILE=/tmp/roboshop.log
#rm -f ${LOG_FILE}

#STAT_CHECK() {
  if [ $1 -ne 0 ]; then
     echo -e "\e[1;31m${2} - Failed\e[0m"
     exit 1
     else
     echo -e "\e[1;32m${2} - SUCCESS\e[0m"
   fi
#}

yum install nginx -y >>${LOG_FILE}
STAT_CHECK $? "Nginx installation"

curl -f -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
STAT_CHECK $? "Dowload frontend failed"

rm -rf /usr/share/nginx/html/*
STAT_CHECK $? "Remove old HTML pages"

cd /tmp && unzip /tmp/frontend.zip &>>${LOG_FILE}
STAT_CHECK $? "Extracing Frontend content"

cd /tmp/frontend-main/static/ && cp -pr * /usr/share/nginx/html/
STAT_CHECK $? "Copying Frontend content"

cp /tmp/frontend-main/localhost.conf /etc/nginx/default.d/roboshop.conf
STAT_CHECK $? "update Nginx Congi File"


systemctl enable nginx &>>${LOG_FILE} && systemctl restart nginx &>>${LOG_FILE}
STAT_CHECK $? "nginx restarted"
