echo "enter day"
read today
if [ $today -eq "sunday" ]
then 
   echo "enjoy..$today is holiday"
   exit 1
else
   echo "$today is working day...Happy Learning..."
fi