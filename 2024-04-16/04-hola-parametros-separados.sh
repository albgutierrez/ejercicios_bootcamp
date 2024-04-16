#!/usr/bin/bash
if [ $# -lt 1 ]; then
    echo "No se ha recibido ningún parámetro"
    exit 1
fi

contador=0
echo -n "Hola "
for param in "$@"
do
    if [ $contador -gt 0 ]; then
        echo -n ", "
    fi
    echo -n "$param"
    ((contador++))
done
echo 
