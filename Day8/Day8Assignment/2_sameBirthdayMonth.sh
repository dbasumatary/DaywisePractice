declare -A birthDay

totalPeople=50
for(( person = 1; person <= totalPeople; person++ ))
do
	(( birthMonth = 1 + RANDOM%12 ))
	(( birthYear = 92 + RANDOM%2 ))
	echo "The individual $person has birthday in month $birthMonth and year $birthYear "
	birthDay[$birthMonth]+="${person}"
done

for month in ${!birthDay[@]}
do
    for person in ${birthDay[$month]}
    do
	echo "The individuals who are having birthday in month $month are: ${person}"
    done
done
