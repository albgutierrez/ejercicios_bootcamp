#!/bin/bash
# Script que muestra información de un fichero pasado
# por línea de comandos
# Autor: Alberto Gutierrez - 2024-04-23

if [ $# -lt 1 ]; then
    echo "Error: Debe especificar el nombre de un fichero"
    exit 1
fi

if [ ! -e $1 ]; then
    echo "Error: El fichero $1 no existe"
    exit 1
fi

if [ -d $1 ]; then
    echo "$1 es un directorio"
fi

if [ -f $1 ]; then
    echo "$1 es un fichero"
fi

if [ -L $1 ]; then
        echo "El fichero es un enlace simbólico"
fi

if [ -O $1 ]; then
        echo "Soy el propietario de $1"
fi

if [ -G $1 ]; then
        echo "Pertenezco al mismo grupo de $1"
fi

if [ -w $1 ]; then
        echo "Puedo escribir en $1"
fi

if [ -x $1 ]; then
    if [ -f $1 ]; then
        echo "Tengo permisos para ejecutar el fichero $1"
    fi
    if [ -d $1 ]; then
        echo "Tengo permisos para entrar en el directorio $1"
    fi
fi

permisos=$(stat -c '%A' $1)
filetam=$(stat -c "%s" $1)

echo -e "\nFichero: $1"
echo "Permisos propietario: $(echo $permisos | cut -c 2-4)"
echo "Permisos grupo: $(echo $permisos | cut -c 5-7)"
echo "Permisos otros: $(echo $permisos | cut -c 8-10)"
echo "Tamaño del fichero: $filetam bytes"
