#!/usr/bin/bash
if [ $# -lt 1 ]; then
    echo "Usage: $0 param1 [param2] [param3] ... [paramN]"
    echo 
    echo "Devuelve un saludo a los nombres pasados por parámetro"
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