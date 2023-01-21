F_to_C ()
{
    fahrenheit=$1
    celsius=$(echo "$fahrenheit" | awk '{printf "%0.3f",($1-32)*5/9}')
    echo "$fahrenheit fahrenheit =  $celsius celsius"
}

C_to_F ()
{
    celsius=$1
    fahrenheit=$(echo "$celsius" | awk '{printf "%0.3f",($1 * 9/5) + 32}')
    echo " $celsius celsius =  $fahrenheit fahrenheit"
}

echo "Select the option 1 or 2 from the following:"
echo "1.degF to degC"
echo "2.degC to degF"
read option

case $option in
    1)
    read -p "Enter the temperature in fahrenheit (with in 32 F and 212 F): " fTemp
    if (( fTemp >= 32 && fTemp <= 212))
    then
        F_to_C $fTemp
    else
        echo "The entered temperature is not within freezing point and boiling point of water"
    fi
    ;;
    2)
    read -p "Enter the temperature in celsius (with in 0 C and 100 C): " cTemp
    if (( cTemp >= 0 && cTemp <= 100))
    then
        C_to_F $cTemp
    else
        echo "The entered temperature is not within freezing point and boiling point of water"
    fi
    ;;
    *)
    echo "Enter either 1 or 2"
    ;;
esac
