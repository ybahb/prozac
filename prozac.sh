#!/bin/bash

LINE=`wc -l links`
LINE=${LINE:0:1} #Combien de lignes dans le fichier
LINE=`expr $RANDOM % $LINE` #Aleatoire et modoluisé
i=0
while read -r line;
do
	if [ $i -eq $LINE ]
	then
		nohup firefox "$line" > /dev/null &
		echo Enjoy
		exit
	fi
	i=`expr $i + 1`
done < links
#La depression est à present guérie
