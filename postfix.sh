#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user..."
fi
   yum install mailx -y
   if [ $? -ne 0 ]
   then
      echo "maix installation is not installled..."
   else
      echo "mailx installed successfully...."
  fi