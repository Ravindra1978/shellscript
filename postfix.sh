#!/bin/bash
VALIDATE()
{
    if [ $1 -ne 0 ]
   then
      echo "Installation is FAILURE..."
   else
      echo "Installation is SUCCESS..."
  fi
}
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user..."
    exit 1
fi
   yum install mailx -y
   VALIDATE  $?
  yum install postfix -y
  VALIDATE $?

