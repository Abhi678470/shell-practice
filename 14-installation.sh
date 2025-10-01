#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]; then
    echo "please enter the root user and execute the script"
fi
dnf install mysql -y

if [$? -ne 0];then
    echo "ERROR IN INSTALLING MYSQL"
else
    echo "installalling my sql is success"    

fi