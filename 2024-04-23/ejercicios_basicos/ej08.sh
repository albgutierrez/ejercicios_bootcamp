#!/bin/bash
dir_destino="$HOME/backup/imagenes"
extension="bmp"
if [ ! -d $dir_destino ]; then
	echo "Error: no existe el directorio de backup"
	exit 1
fi
cp -v *.$extension $dir_destino
