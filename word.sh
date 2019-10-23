#As user to enter a word an do check on it
echo "Enter a word: \c"
read word
case $word in 
	[aeiou]* | [AEIOU]*)
		echo "The word begins with a vowel."
		;;
	[0-9]*)
		echo "The word begins with a digit."
		;;
	*[aeiou] | *[AEIOU])
		echo "The word ends with a vowel."
		;;
	*[0-9])
		echo "The word ends with a digit."
		;;
	???)
		echo "The word is a 3 character word."
		;;
	*)
		echo "I don't know what you entered."
		;;
esac


		
