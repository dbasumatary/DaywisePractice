read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

p=$(( a + b * c ))
q=$(( c + a / b ))
r=$(( a % b + c ))
s=$(( a * b + c ))

echo "The arithmetic operations will be $p, $q, $r, $s"

#Checking for minimum value.
if [ $p -lt $q ] && [ $p -lt $r ] && [ $p -lt $s ]
then
    min=$p
elif [ $q -lt $r ] && [ $q -lt $s ]
then
    min=$q
elif [ $r -lt $s ]
then
    min=$r
else
    min=$s;
fi

#Checking for maximum value.
if [ $p -gt $q ] && [ $p -gt $r ] && [ $p -gt $s ]
then
    max=$p
elif [ $q -gt $r ] && [ $q -gt $s ]
then
    max=$q
elif [ $r -gt $s ]
then
    max=$r
else
    max=$s;
fi

echo "The minimum value is $min"
echo "The maximum value is $max"
