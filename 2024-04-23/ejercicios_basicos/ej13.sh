#!/bin/bash
destino="$HOME/backup/documentos"
extension=$1

if [ $# -ne 1 ]; then
	echo "Usage: $0 extension"
	exit 1
fi

if [ ! -d $destino ]; then
	echo "Error: no existe el directorio de backup"
	exit 1
fi
cp -v *.$extension $destino 2>/dev/null
if [ $? -ne 0 ]; then
	echo "No se han encontrado ficheros con extension $extension"
fi
