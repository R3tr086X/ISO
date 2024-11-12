#!/bin/bash

clear

if [ $# -eq 1 ]
then
	w $1
else
	echo "Debe introducir algún parámetro"
fi
