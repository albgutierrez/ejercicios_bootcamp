#!/bin/bash

function error () {
    echo "[ERROR] - $1"
    exit 1
}

# Comprobamos si es root
if [ $(id -u) -ne 0 ]; then
    error "Se debe ejecutar el script como root"
fi

if [ -z $1 ]; then
    error "Se debe proporcionar el nombre del usuario en el primer parametro"
fi

if [ -z $2 ]; then
    error "Se debe proporcionar el nombre del directorio en el segundo parametro"
fi

usuario=$1
directorio=$2

if ! id $usuario &> /dev/null; then
    error "El usuario $usuario no existe en el sistema"
fi

homeDir=$(cat /etc/passwd | grep ^$usuario | cut -d":" -f6)
dstDir=$homeDir/$directorio

if [ ! -d $dstDir ]; then
    mkdir $dstDir
fi 

chown $usuario $dstDir
chmod 750 $dstDir
