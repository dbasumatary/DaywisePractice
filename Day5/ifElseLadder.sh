read -p "Enter first value: " x
read -p "Enter second value: " y
read -p "Enter third value: " z

if [ $x -gt $y ]
then
echo "$x is greater than $y"
elif [ $y -ne $z ]
then
echo "$y is not equal to $z"
 else
echo "$y is greater than $x"
fi
