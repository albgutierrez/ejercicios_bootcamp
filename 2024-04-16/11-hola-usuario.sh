#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 param1 [param2] [param3] ... [paramN]"
    echo 
    echo "Devuelve un saludo a los usuarios que están conectados"
    exit 1
fi

for param in "$@"
do
    usuario_conectado=$(./usuariosistema $param)
    if [ $usuario_conectado == "SI" ]; then
        echo "Hola $param"
    else
        echo "El usuario $param no está conectado"
    fi
done
