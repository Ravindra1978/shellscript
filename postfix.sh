#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user..."
    exit 1
fi
   yum install postfix -y