#!/bin/bash

function check_user (){
    for user in $usuarios
    do
        if [ $1 == $2 ]; then
            echo 0
        else
            echo 1
        fi
    done
}

if [ $# -lt 1 ]; then
    echo "Usage: $0 param1 [param2] [param3] ... [paramN]"
    echo 
    echo "Devuelve un saludo a los usuarios que están conectados"
    exit 1
fi

usuarios=$(who | cut -d " " -f1 | sort | uniq)
for param in "$@"
do
    user_logged=$(check_user $param $usuarios)
    if [ $user_logged -eq 0 ]; then
        echo "Hola $param"
    else    
        echo "$param no está conectado"
    fi
done
