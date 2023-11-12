echo "enter day"
read today
if [ $today -eq "sunday" ]
then 
   echo "enjoy..$today is sunday and it is holiday today"
   exit 1
else
   echo "$today is working day...Happy Learning..."
fi