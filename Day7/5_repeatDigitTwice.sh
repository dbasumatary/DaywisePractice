read -p "Enter lower range: " lower_range
read -p "Enter upper range: " upper_range

count=0
for(( i = lower_range; i <= upper_range; ))
do
    if (( i % 11 == 0 ))
    then
        array[count++]=$i
        (( i += 11))
    else
        (( i++ ))
    fi
done

echo "The digits that are repeated twice are: "${array[@]}
