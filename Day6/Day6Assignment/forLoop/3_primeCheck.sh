read -p "Enter a number:" num
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
