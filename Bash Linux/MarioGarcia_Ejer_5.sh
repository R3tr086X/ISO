#!/bin/bash

clear

#Primero pide un número por pantalla
read -p "Introduce un número: " num

#hace la multiplicación por dos
resultado=$(($num*2))

#muestra el resultado
echo $resultado

#te pregunta si quiere continuar
read -p "Quiere seguir calculando? (Y/N): " valor

#si el valor es una Y mayúscula entonces continua el bucle
if [ $valor = Y ]
then
	while [ $valor = Y ]
	do	
		read -p "Introduce un número: " num

		resultado=$(($num*2))

		echo $resultado
	
		read -p "Quiere seguir calculando? (Y/N): " valor
	done
else
	echo "Proceso terminado"
fi
