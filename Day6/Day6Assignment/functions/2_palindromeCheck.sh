palindromeCheck ()
{
    num=$1
    temp=$num

    reverseCount=0
    while (( num > 0 ))
    do
        rem=$(( num % 10 ))
        reverseCount=$(( reverseCount * 10 + rem ))
        (( num /= 10 ))
    done

    if [ $temp -eq $reverseCount ]
    then
        echo "It is palindrome"
    else
        echo "It is not palindrome"
    fi
}

read -p "Enter first number: " first_number
read -p "Enter second number: " second_number

palindromeCheck $first_number
palindromeCheck $second_number
