echo "Think of a number num between 1 and 100"
numMin=1
numMax=100
flag=0
while (( flag == 0))
do
    magicNumber=$(( (numMin + numMax) / 2))

    echo "Enter 1 if n > $magicNumber"
    echo "Enter 2 if n = $magicNumber"
    echo "Enter 3 if n < $magicNumber"
    read option
    if(( option == 1 ))
    then
        numMin=$(( magicNumber + 1 ))
    elif (( option == 2 ))
    then
        flag=1
        echo "The number you guessed is the $magicNumber"
    elif (( option == 3 ))
    then
        numMax=$(( magicNumber - 1 ))
    else
        echo "Please enter only 1 or 2 or 3 depending on the condition"
    fi
done
