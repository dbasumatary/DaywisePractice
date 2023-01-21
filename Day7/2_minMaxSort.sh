
for(( i=0; i<10; i++))
do
    array[i]=$(( 100 + RANDOM%900 ))
done

echo "The 10 random three digit numbers are: "${array[@]}

array=($(printf '%d\n' ${array[@]} | sort -n))

echo "The sorted array is: " ${array[@]}

echo "The second largest element is ${array[-2]}"
echo "The second smallest element is ${array[1]}"
