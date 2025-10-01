#!/bin/bash

dnf install nginx -y

if [ $? -ne 0]; then
    echo "nginx instalation having error"
    exit 1
else
    echo "installing nginx is sucessfull"
fi
    