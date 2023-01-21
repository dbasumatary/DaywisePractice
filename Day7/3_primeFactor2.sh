count=0
echo "Enter a number: "
read x
echo "The prime factors of $x are: "

for(( i = 2; i * i <= x; ))
do
    if(( x % i == 0))
    then
        array[count++]=$i
        (( x /= i ))
    else
        (( i ++ ))
    fi
done

array[count]=$x
echo "${array[@]}"

