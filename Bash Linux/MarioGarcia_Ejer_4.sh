#!/bin/bash

clear

#Se comprueba que se hayan pasado dos parámetros
if [ $# -eq 2 ]
then
	#si los dos parámetros son ficheros pasa el contenido
	if [ -f $1 ] && [ -f $2 ]
	then
		cat $1 >> $2
		exit 0
	else
		echo "Uno o los dos fichero no existen"
		exit 1
	fi
else
	#si no pones 2 argumentos entonces te vuelve a preguntar
	echo "No ha introducido dos argumentos"
	
	read -p "Introduzca el primer argumento: " primero
	read -p "Introduzca el segundo argumento: " segundo
	
	#y se vuelve a la misma operacion de arriba
	if [ -f $primero ] && [ -f $segundo ]
	then
		cat $primero >> $segundo
		exit 0
	else
		echo "Uno o los dos fichero no existen"
		exit 1
	fi
fi
