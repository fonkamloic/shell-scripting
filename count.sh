#
echo "Enter a character: \c"
read var
if [ `echo $var | wc -c` -eq 4 ]
then
	echo "You entered a character."	
else
	echo "Invalid input"
fi
