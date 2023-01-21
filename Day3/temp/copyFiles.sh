for files in *.txt
do
        folderName=`echo $files | awk -F. '{print $1}'`;
        printf "\n";
        if [ -d $folderName ]
        then
                rm -r $folderName;
        fi
        mkdir $folderName;
        mv $files $folderName/$files;
	echo $folderName/$files
done

