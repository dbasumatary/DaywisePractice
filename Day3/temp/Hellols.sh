cmd="ls"

status=$?

if [$status -eq 0]:
	then
		echo "ls execution successful"
		exit 0
	else
		echo "ls execution not successful"
		exit 1
fi
