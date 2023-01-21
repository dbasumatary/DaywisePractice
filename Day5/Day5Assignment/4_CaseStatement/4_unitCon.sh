echo "Choose one of the options."
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
echo "Enter any number between 1 to 4: "
read option
case $option in
    1)
    read -p "Enter no in feet: " no_in_feet
    inch=`awk 'BEGIN{printf"%0.2f",'$no_in_feet'*12}'`;
    echo $no_in_feet feet = $inch inch
    ;;
    2)

    read -p "Enter no in feet: " no_in_feet
    meter=`awk 'BEGIN{printf"%0.2f",'$no_in_feet'*0.3048}'`;
    echo $no_in_feet feet = $meter meter
    ;;

    3)
    read -p "Enter no in inch: " no_in_inch
    feet=`awk 'BEGIN{printf"%0.2f",'$no_in_inch'*0.08333}'`;
    echo $no_in_inch inch = $feet feet
    ;;

    4)
    read -p "Enter no in meters: " no_in_meter
    feet=`awk 'BEGIN{printf"%0.2f",'$no_in_meter'*3.2808}'`;
    echo $no_in_meter meter = $feet feet
    ;;
esac
