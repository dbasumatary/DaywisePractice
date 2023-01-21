for files in *.log.1
do
        fileName=`echo $files | awk -F. '{print $1}'`;
        printf "\n";

        currdate=`date +%d%m%Y`;
        temp=$fileName-$currdate.log;
	mv $files $temp
        echo $files changed to $temp;

done
