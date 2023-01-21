read -p "Enter lower extreme: " lowerNum
read -p "Enter upper extreme: " upperNum

for (( i = lowerNum; i <= upperNum; i++ ))
do
	flag=1
    	maxDiv=$(echo $i | awk '{printf "%d", sqrt($1)}')

    	for ((j = 2; j <= maxDiv; j++))
    	do
        	if (( i % j == 0))
        	then
        		flag=0
        	break
        	fi
    	done
    	if((flag))
    	then
        	echo "$i is prime"
    	else
        	echo "$i is not prime"
    	fi
done
