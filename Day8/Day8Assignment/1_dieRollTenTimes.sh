declare -A dictionary

counter=10
while(( 1 ))
do
	temp=$(( 1 + RANDOM%6 ))
	(( dictionary[$temp]++))

	if(( dictionary[$temp] == counter))
	then
        	break
	fi

done

max_number=$(( 1 + RANDOM%6 ))
min_number=$(( 1 + RANDOM%6 ))

echo "The numbers on the dice and their number of appearances are: "

for die_number in ${!dictionary[@]}
do

	if(( dictionary[$die_number] >= dictionary[$max_number] ))
	then
        	max_number=$die_number
	fi


	if(( dictionary[$die_number] <= dictionary[$min_number] ))
	then
        	min_number=$die_number
	fi

	echo $die_number "-" ${dictionary[$die_number]}
done

echo "The number that reached maximum times is $max_number"
echo "The number that reached minimum times is $min_number"
