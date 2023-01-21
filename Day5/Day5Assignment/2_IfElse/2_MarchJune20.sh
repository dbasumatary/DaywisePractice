read -p "Enter day: " Day
read -p "Enter month: " Month

#We are first checking between the months and then between dates.
if(( Month >= 3 && Month <= 6 ))
then
    if(( Month == 3 && Day < 20 || Month == 6 && Day > 20 ))
    then
        echo "false"
    else
        echo "true"
    fi
else
    echo "false"
fi
