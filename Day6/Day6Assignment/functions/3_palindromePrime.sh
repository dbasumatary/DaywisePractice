palindromeCheck ()
{
	num=$1
    	temp=$num
    	reverseCount=0
    	while (( num > 0 ))
    	do
        	rem=$(( num % 10 ))
        	reverseCount=$(( reverseCount * 10 + rem ))
        	(( num /= 10 ))
    	done

    	if [ $temp -eq $reverseCount ]
    	then
        	echo "It is palindrome"
   	else
        	echo "It is not palindrome"
    	fi
}

primeCheck ()
{
	num=$1
 	count=$(echo $num | awk '{printf "%d", sqrt($1)}')
	flag=1

	for (( i = 2; i <= count; i++ ))
	do
        	if (( num % i == 0 ))
        	then
                	flag=0
                	break
        	fi
	done

	if(( flag ))
	then
        	echo "$num is prime"
	else
        	echo "$num is not prime"
	fi
}

read -p "Enter a number: " number


primeCheck $number
palindromeCheck $number
