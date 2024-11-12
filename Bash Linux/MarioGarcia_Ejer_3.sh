#!/bin/bash

clear

#primero se comprueba que haya al menos un parámetro
if [ $# -ne 0 ]
then
	#por cada valor en la lista de parámetros:
	for valor in $*
	do
		#si valor es un fichero le asigna los permisos
		if [ -f $valor ]
		then
			chmod ugo+x $valor
			echo "$valor se ha cambiado correctamente"
			
		#si valor es un directorio le asigna los permisos
		elif [ -d $valor ]
		then
			chmod ugo+x $valor
			echo "$valor se ha cambiado correctamente"
		
		else
			echo "$valor no es un fichero/directorio, o no existe"
		fi
	done
else
	echo "Debe introducir algún parámetro"
	exit 1
fi
