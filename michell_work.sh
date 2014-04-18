#!/bin/bash

segundoDirectorio(){
	echo "el segundo directorio se llama $2"
	if [ -d $2 ]
	then
		echo "el directorio $2 ya existe, ingresando..."
		cd $2
		
	else
		echo "se ha creado el directorio $2"
		mkdir $2
		cd $2

	fi

	#echo $PWD  # path del directorio actual
	echo "copiando archivos de apache2"
	cp -r /etc/apache2/* $PWD
	echo "listando los archivos del 2do directorio"
	ls
}


if [ $# = 2 ]
then
	if [ -d $1 ]
	then
		echo "el directorio $1 ya existe, ingresando..."
		cd $1
		segundoDirectorio $1 $2
	else
		echo "se ha creado el directorio $1"
		mkdir $1
		cd $1
		segundoDirectorio $1 $2
	fi
else
	echo "Numero incorrecto de parametros"
fi

