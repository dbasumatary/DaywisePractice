declare -A sounds

sounds[dog]="Bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound" ${sounds[dog]}
echo "All Animal Sounds" ${sounds[@]}
echo "Animal Keys" ${!sounds[@]}
echo "Number of Animals" ${#sounds[@]}
unset sounds[dog]
