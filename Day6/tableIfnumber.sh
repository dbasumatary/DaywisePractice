read -p "Enter a number to print table: " num
echo $num

for (( i=1; i<=10; i++ ))

do

table=$(($num*$i))
echo "Table of the given number $num*$i: " $table

done
