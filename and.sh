#and operator
echo "Enter a number between 50 and 100: \c"
read num
if [ $num -le 100 -a $num -ge 50 ]
then
	echo "You are withing limits"
else
	echo "YOu are out of limits"
fi

