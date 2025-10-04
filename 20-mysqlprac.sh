#!/bin/bash

USERID =$(id -u)

if [ $USERID -ne 0 ]; then
    echo "kindly move to the root user"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "error in installing mysql"
    exit 1
else
    echo "installing my sql is success"
fi


