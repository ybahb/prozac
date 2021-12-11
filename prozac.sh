#!/bin/bash

LINE=`wc -l links`
LINE=${LINE:0:1}
LINE=`expr $RANDOM % $LINE`
echo $LINE

i=0

while read -r line;
do
	if [ $i -eq $LINE ]
	then
		nohup firefox "$line" > /dev/null
		echo Enjoy
		exit
	fi
	i=`expr $i + 1`
done < links

