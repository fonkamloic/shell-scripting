echo "Enter username: \c"
read logname

grep "$logname" /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
	echo "Wait..."
else
	echo "User not found."
	exit
fi

time=0

while true
do
	who | grep "$logname" > /dev/null
	if [ $? -eq 0 ]
	then
		echo "$logname has logged in."
		if [ $time -ne 0 ]
		then
			if [ $time -gt 60 ]
			then
				min=`expr $time / 60`
				sec=`expr $time % 60`
				echo "$logname was $min minutes and $sec seconds late in logging in."
			else
				sec=$time
				echo "$logname was $sec second late in logging in."
			fi
		fi
		exit
	else
		time=`expr $time + 1`
		sleep 60
	fi
done
