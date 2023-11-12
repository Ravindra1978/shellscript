#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user..."
    exit 1
fi
VALIDATE()
{
    if [ $1 -ne 0 ]
   then
      echo "Installing $2 is FAILURE..."
   else
      echo "Installing $2 is SUCCESS..."
  fi
}
   yum install mailx -y
   VALIDATE  $? "mailx"
  yum install postfix -y
  VALIDATE $? "postfix"

