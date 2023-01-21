echo "Enter the number n: "
read n
result=0
echo "The Harmonic series is: "
for (( i = 1; i <= n; i++ ))
do
    temp=`awk BEGIN{printf("%0.2f",'1'/$i)}`;
    result=`awk BEGIN{printf("%0.2f",$result+$temp)}`;
    echo -n "$result  "
done

echo "The ${n}th harmonic number is $result"
