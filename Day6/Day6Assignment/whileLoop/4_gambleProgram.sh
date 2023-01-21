MoneyCount=100
betMoney=1
betCount=0
wonCount=0
while(( MoneyCount != 0 && MoneyCount < 200 ))
do
	echo -n "The bet is "
    	flag=$(( RANDOM%2 ))
    	if ((flag == 1))
    	then
        	echo "won"
        	(( MoneyCount += betMoney ))
        	(( wonCount++))
    	else
        	echo "lost"
        	((MoneyCount -= betMoney ))
    	fi
    	(( betCount++ ))

done

echo "The final money remaining is $MoneyCount"
echo "The  no of times won are $wonCount and no of bets made are $betCount"
