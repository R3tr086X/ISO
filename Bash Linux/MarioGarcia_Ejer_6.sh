#!/bin/bash

clear

if [ $# -ne 0 ]
then
	for valor in $*
	do
		if [ -f $valor ] || [ -d $valor ]
		then
		read -p "Quiere borrar $valor? (Y/N): " var
		
			if [ $var = Y ]
			then
				rm -r $valor
				echo "$valor se ha borrado correctamente"
			else
				echo "El fichero/directorio no se ha borrado"
			fi
		
		else
		echo "$valor no existe o no es fichero/directorio"
		fi
	done
else
	echo "Debe introducir un parámetro"
fi
