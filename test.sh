#test the range of a number
echo "Enter a number between 10 and 20:\c"
read num
if [ $num -lt 10 ]
then
	echo "That was under the belt partner."

elif [ $num -gt 20 ]
then
	echo "The number is greater that 20"
else
	echo "Now you are making sense!"
fi
