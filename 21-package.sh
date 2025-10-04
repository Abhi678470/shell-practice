#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "kindly move to the root user"
    exit 1
fi

VALIDATE(){

  if [ $1 -ne 0 ]; then
    echo "error in installing $2"
    exit 1
  else
    echo "installing OF $2 IS success"
   fi

}

dnf install mysql -y
VALIDATE $1 "MYSQL"

dnf install nginx -y
VALIDATE $1 "nginx"


