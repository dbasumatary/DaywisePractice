read -p "Enter the number: " num

echo $num

i=1

while [ $i -le 45 ]
do
table=$(($num*$i))
((i++))
echo "$table"
done
