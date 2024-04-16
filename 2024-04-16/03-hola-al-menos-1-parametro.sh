#!/usr/bin/bash
if [ $# -lt 1 ]; then
    echo "No se ha recibido ningún parámetro"
    exit 1
fi

echo "Hola $*"