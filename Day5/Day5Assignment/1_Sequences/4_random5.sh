num1=$(( 10 + RANDOM % 90))
num2=$(( 10 + RANDOM % 90))
num3=$(( 10 + RANDOM % 90))
num4=$(( 10 + RANDOM % 90))
num5=$(( 10 + RANDOM % 90))
echo "The five random 2 digit values are $num1, $num2, $num3, $num4, $num5"
sum=$((num1 + num2 + num3 + num4 + num5))
average=$( echo $sum 5 | awk '{printf "%.2f", $1 / $2}')
echo "The sum of these values is: $sum"
echo "The average of these values is: $average"

