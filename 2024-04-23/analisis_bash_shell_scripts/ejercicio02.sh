#!/bin/bash
#
# Autoro Javier Pedrero Martín - javier@educatica.es
# Fecha: Marzo 2021

function error () {
    echo "[ERROR] - $1"
    exit 1
}

if [ $(id -u) -ne 0 ]; then
    error "El script se debe ejecutar por root"
fi

for fichero in $(ls /infopacense); do
    ruta=/infopacense/$fichero
    echo "Fichero: $fichero"
    echo
    if [ -f $ruta ]; then
        ls -l $ruta
    elif [ -d $ruta ]; then
        ls -ld $ruta
        du -sh $ruta
        if id $fichero &>/dev/null; then
            echo "Usuario: $fichero existe"
        else
            echo "No existe usuario $fichero en el sistema"
        fi
    else
        echo "Otro tipo de fichero: $fichero"
    fi
done