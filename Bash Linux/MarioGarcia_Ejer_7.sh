#!/bin/bash

clear

if [ $# -eq 0 ] 
then
	find $PWD -type f
	find $PWD -type d
	fichero=`find $PWD -type f | wc -l`
	carpeta=`find $PWD -type d | wc -l`
	
	echo "Hay $fichero fichero/s"
	echo "Hay $carpeta carpeta/s"
	
	exit 0
		
elif [ $# -eq 1 ] 
then
	if [ -d $1 ]
	then
		find $1 -type f
		find $1 -type d
		fichero=`find $1 -type f | wc -l`
		carpeta=`find $1 -type d | wc -l`
	
		echo "Hay $fichero fichero/s"
		echo "Hay $carpeta carpeta/s"
	
		exit 0
	else
		echo "error"
	exit 1
	fi
fi
