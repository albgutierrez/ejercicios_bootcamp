#!/bin/bash
## Script que muestra información del usuario
#
# Autor: Alberto Gutierrez - 2024-04-25

if [ $# -ne 1 ]; then
    echo "Error: Debe especificar un nombre de usuario"
    exit -1
fi

if [ ! $(cat /etc/passwd | cut -d":" -f1 | grep $1) ]; then
    echo "Error: El usuario no existe"
    exit 2
fi

# Lo hacemos así por requermiento del enunciado
homeDir="/home/$1"

if [ ! -d $homeDir ]; then
    echo "Error: No existe el directorio personal del usuario"
    exit 3
fi

echo "Nombre de usuario: $1"
echo "Info del usuario: $(id $1)"
echo "Directorio personal del usuario: $homeDir"
echo "Permisos del directorio $homeDir: $(stat -c '%A' $homeDir)"
ls $homeDir
