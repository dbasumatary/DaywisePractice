headCount=0
tailCount=0
while (( headCount < 11 && tailCount < 11))
do

    flip=$(( RANDOM%2 ))
    if (( $flip == 0 ))
    then
    echo "Flip outcome is Heads "
    (( headCount ++ ))
    else
    echo "Flip outcome is Tails "
    (( tailCount ++ ))
    fi
    echo "Heads: $headCount and Tails: $tailCount"
done
if (( $headCount > $tailCount ))
then
	echo "Game Over! Head wins 11 times"
else
	echo "Game Over! Tail wins 11 times"
fi
