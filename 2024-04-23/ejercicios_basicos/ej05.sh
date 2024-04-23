#!/bin/bash
echo "Hola $(whoami)"
directorios="documentos imagenes musica videos"
for dir in $directorios
do
	if [ ! -d ~/backup/$dir ]; then
		mkdir -p ~/backup/$dir
	fi
done
echo "Ejecución finalizada. Adiós"
ls -l ~ | grep backup | cut -d" " -f1,3,4
