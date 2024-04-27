#!/bin/bash
## Script que muestra información del usuario
#
# Autor: Alberto Gutierrez - 2024-04-25

if [ $# -ne 1 ]; then
    echo "Error: Debe especificar un nombre de usuario"
    exit -1
fi

idu=$(id $1 2>/dev/null)
if [ $? -ne 0 ]; then
    echo "Error: El usuario no existe"
    exit 2
fi

homeDir=$(cat /etc/passwd | grep $1 | cut -d":" -f6)

if [ ! -d $homeDir ]; then
    echo "Error: No existe el directorio personal del usuario"
    exit 3
fi

echo "Nombre de usuario: $1"
echo "Info del usuario: $idu"
echo "Directorio personal del usuario: $homeDir"
echo "Permisos del directorio $homeDir: $(stat -c '%A' $homeDir)"
ls $homeDir
