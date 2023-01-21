#a)
num_in_inches=42
num_in_feet=$(echo $num_in_inches | awk '{printf "%0.3f",$1/12}')
echo "(a) 42 inches = $num_in_feet feet"

#b)
length_in_feet=60
width_in_feet=40
area_in_feet=$((length_in_feet * width_in_feet))
area_in_m=$(echo $area_in_feet | awk '{printf "%0.3f",$1*0.3048*0.3048}')
echo "(b) The rectangular plot is $area_in_m meters"

#c)
no_of_plots=25
area_in_acr=$(echo $area_in_feet $no_of_plots | awk '{printf "%0.3f",$1*$2/43560}')
echo "(c) The area of $no_of_plots such plots is $area_in_acr acres"
