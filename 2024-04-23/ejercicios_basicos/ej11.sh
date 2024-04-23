#!/bin/bash
dir_destino="$HOME/backup/imagenes"
extension="bmp"
if [ ! -d $dir_destino ]; then
	echo "Error: no existe el directorio de backup"
	exit 1
fi
cp -v *.$extension $dir_destino

# Respuestas:
# Que has tenido que cambiar
#   La asignación de la variable extension
# ¿Problemas de esta forma de trabajar?
#   Hay que hacer un script para cada extension, no es eficiente
