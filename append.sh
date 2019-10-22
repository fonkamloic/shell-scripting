#Check if file exit and if user has write permisssion to file
echo "Enter a file name:\c"
read fname
if [ -f $fname ]
then 
	if [ -w $fname ]
	then
		echo "Type matter to append. To quit press ctr + d"
		cat >> $fname
	else
		echo "You don't have permission to write."
	fi
fi
