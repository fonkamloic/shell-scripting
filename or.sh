#as user to enter a character a check if entered more than one
echo "Enter a lowercase character: \c"
read var
if [ `echo $var | wc -c` -eq 2 ]
then
	if [ $var = a -o $var = e -o $var = i -o $var = o -o $var = u ]
	then
		echo "You have enter a vowel"
	else
		echo "You didn't enter a vowel"
	fi
else
	echo "Invalid Input"
fi
