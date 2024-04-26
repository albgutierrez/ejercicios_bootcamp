#!/bin/bash
# Script que muestra información de un fichero pasado
# por línea de comandos
# Autor: Alberto Gutierrez - 2024-04-23

if [ $# -lt 1 ]; then
    echo "Error: Debe especificar el nombre de un fichero"
    exit 1
fi

if [ ! -f $1 ]; then
    echo "Error: El fichero $1 no existe"
    exit 1
fi

ls -ld $1
