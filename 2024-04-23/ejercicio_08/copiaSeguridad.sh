#!/bin/bash

# Comprobamos que el script se ejecuta con permisos de superusuario
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: Este script debe ser ejecutado como usuario root." >&2
    exit 1
fi

# Comprobamos si se ha pasado un parámetro
if [ $# -ne 1 ]; then
    echo "Error: Debe especificar un nombre de usuario" >&2
    exit 1
fi

usuario=$1
# Comprobamos si el usuario existe en el sistema
if [ $(cat /etc/passwd | grep $usuario | wc -l) -eq 0 ]; then
    echo "Error: El usuario $usuario no existe" >&2
    exit 1
fi

# Definimos las rutas de origen y destino (origen el $HOME del usuario y destino /backup/usuario)
rutaDestino="/backup/$usuario"
rutaOrigen=$(cat /etc/passwd | grep $usuario | cut -d":" -f6)

if [ ! -d $rutaDestino ]; then
    mkdir -p $rutaDestino
fi
cp -arv $rutaOrigen/* $rutaDestino
