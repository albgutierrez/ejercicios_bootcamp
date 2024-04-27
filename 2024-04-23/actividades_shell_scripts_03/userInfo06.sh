#!/bin/bash
## Script que muestra información del usuario
#
# Autor: Alberto Gutierrez - 2024-04-25

function Error() {
    echo "Error $1: $2"
    exit $1
}

if [ $# -ne 1 ]; then
    Error -1 "Debe especificar un nombre de usuario"
fi

idu=$(id $1 2>/dev/null)
if [ $? -ne 0 ]; then
    Error 2 "El usuario no existe"
fi

homeDir=$(cat /etc/passwd | grep $1 | cut -d":" -f6)
if [ ! -d $homeDir ]; then
    Error -3 "No existe el directorio personal del usuario"
fi

echo "Nombre de usuario: $1"
echo "Info del usuario: $idu"
echo "Directorio personal del usuario: $homeDir"
echo "Permisos del directorio $homeDir: $(stat -c '%A' $homeDir)"
ls $homeDir
