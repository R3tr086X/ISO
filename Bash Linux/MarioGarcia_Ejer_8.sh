#!/bin/bash

clear

if [ $# -eq 2 ]
then
	usu=`grep "^$1:" /etc/passwd | wc -l`
	
	if [ $usu -eq 1 ]
	then
		datos=`grep "^$1:" /etc/passwd | cut -d: -f1,6,7`
		echo "$datos"
		proceso=`w $1`
	else
		echo "$1 no existe"
		exit 2
	fi
	
	if [ $2 = -p ]
	then
		echo $proceso
	
	elif [ $2 = -u ]
	then
		echo $datos
	
	elif [ $2 = --help ]
		

else
	echo "Debe introducir dos parámetro"
	exit 1
fi
