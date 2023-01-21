for files in ls *
do
read -p "Enter the folder to check: " dir

if [ -d $dir ]; then
	echo "The folder already exists."
	exit 1
else

	mkdir $dir
	echo "$dir is created."
	exit 1
fi
done

