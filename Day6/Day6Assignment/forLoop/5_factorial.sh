read -p "Enter the number:" num
count=1

for (( i = 1; i <= num; i++ ))
do
	(( count *= i ))
done
echo "The factorial of $num is $count"
