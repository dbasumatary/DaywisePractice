read -p "Enter a number from 1, 10, 100, 1000, 10000: " num

if(( num == 1 ))
then
    echo "unit"
elif(( num == 10 ))
then
    echo "ten"
elif(( num == 100 ))
then
    echo "hundred"
elif(( num == 1000 ))
then
    echo "thousand"
elif(( num == 10000 ))
then
    echo "ten thousand"
else
    echo "You may enter only the specified numbers."
fi
