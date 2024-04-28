#!/bin/bash

for nombre in $(ls $HOME); do
    fichero=$HOME/$nombre
    echo "Fichero: $nombre ($fichero)"
    if [ -d $fichero ]; then
        echo "Directorio"
    elif [ -f $fichero ]; then
        echo "Fichero"
    elif [ -b $fichero ]; then
        echo "Bloques"
    else
        echo "Otro tipo de fichero"
    fi
    ls -ld $fichero
    echo
done
