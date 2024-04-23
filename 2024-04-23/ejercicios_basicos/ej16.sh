#!/bin/bash
extension=$1

if [ $# -ne 2 ]; then
	echo "Usage: $0 extension destino"
	exit 1
fi

destino="$HOME/backup/$2"
if [ ! -d $destino ]; then
	echo "Error: no existe el directorio de backup"
	exit 1
fi

cp -v *.$extension $destino 2>/dev/null

if [ $? -ne 0 ]; then
	echo "No se han encontrado ficheros con extension $extension"
fi
