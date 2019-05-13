if test -f $1
then
	if test -f $2
	then
		echo 'input "y" if you want lose info in 2nd data
		input "n" if you want add data in the end of 2nd file'
		read x
		if [ "$x" = "y" ]
		then
			cat $1 > $2
		else
			cat $1 >> $2
		fi
	else
		echo "file $2 doesn't exist"
	fi
else
	echo "file $1 not exist"
fi
