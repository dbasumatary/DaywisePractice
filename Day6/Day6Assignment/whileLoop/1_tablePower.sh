read -p "Enter the value of n: " num
#n=$1
result=1
i=0
echo "The table of powers of 2: "
while (( result < 256 ))
do
	if (( i <= num ))
	then
		result=$(( 2 ** i ))
		echo "2^$i = $result"
    		((i+=1))
	else
		break
	fi
done
