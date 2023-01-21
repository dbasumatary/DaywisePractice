second_max_value()
{
    max1=0
    max2=0

    for x in "${array[@]}"
    do
        if (( x > max1))
        then
            max2=$max1
            max1=$x
        elif (( x > max2 && x != max1 ))
        then
            max2=$x
        fi
    done
    echo "The second largest element in the array is $max2"
}

second_min_value()
{
    min1=1000
    min2=1000

    for y in "${array[@]}"
    do
        if (( y < min1))
        then
            min2=$min1
            min1=$y
        elif (( y < min2 && y != min1))
        then
            min2=$y
        fi
    done
    echo "The second smallest element in the array is $min2"
}


for(( i=0; i<10; i++))
do
    array[i]=$(( 100 + RANDOM%900 ))
done

echo "The 10 random 3 digit numbers are: "${array[@]}
second_max_value "${array[@]}"
second_min_value "${array[@]}"
