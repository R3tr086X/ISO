#!/bin/bash

clear

#Primero comprobamos que se pase algún parámetro
if [ $# -eq 1 ]
then
	#Si es un fichero le hace un cat
	if [ -f $1 ]
	then
		cat $1
		exit 0
		
	#Si es un directorio le hace cat a todo lo que contiene
	elif [ -d $1 ]
	then
		cat $1/*
		exit 0
		
	else
	
	#Si es algo más entonces no existe o no es un fichero/directorio
	echo "El parámetro no es un fichero/directorio o no existe"
	exit 1
	fi
else
	echo "Debes introducir un parámetro"
fi
