num1=$(( 100 + RANDOM%900 ))
num2=$(( 100 + RANDOM%900 ))
num3=$(( 100 + RANDOM%900 ))
num4=$(( 100 + RANDOM%900 ))
num5=$(( 100 + RANDOM%900 ))

echo "The five random 3 digit values are $num1, $num2, $num3, $num4, $num5"

#Initially here we are assuming the min and max numbers.
min_num=$num1
max_num=$num5

if (( num1 > max_num ))
then
    max_num=$num1
fi

if (( num2 > max_num ))
then
    max_num=$num2
fi
if (( num2 < min_num ))
then
    min_num=$num2
fi

if (( num3 > max_num ))
then
    max_num=$num3
fi
if (( num3 < min_num ))
then
    min_num=$num3
fi

if (( num4 > max_num ))
then
    max_num=$num4
fi
if (( num4 < min_num ))
then
    min_num=$num4
fi

if (( num5 < min_num ))
then
    min_num=$num5
fi

echo "The minimum value is $min_num"
echo "The maximum value is $max_num"
