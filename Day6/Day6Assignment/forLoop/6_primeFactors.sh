read -p "Enter a number: " N
echo "The prime factors of $N are: "

for(( i = 2; i * i <= N; ))
do
	if(( N % i == 0))
    	then
        	echo -n "$i "
        	((N /= i))
    	else
        	((i += 1))
    	fi
done

echo "$N"
