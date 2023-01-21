for files in *.log
do
	folderName=`echo $files | awk -F. '{print $1}'`;
	echo $files;
	echo $folderName;
	printf "\n";
	if [ -d $folderName ]
	then
		rm -r $folderName;
	fi
	mkdir $folderName;
	cp $files $folderName/$files;
	currdate=`date | awk '{print $3, $2, $6}'`;
	echo "$currdate";
	temp=$folderName-$curr.log;
	echo "$temp";
	cp $folderName/$files $folderName/$temp;

done
