#!/bin/bash
#
# Autor: Javier Pedrero Martín - javierdeducatica.es
# Fecha: Marzo 2021
function showMenu () {
    clear
    echo "Menu de operaciones"
    echo
    echo "1 - Información de grupos"
    echo "2 - Información de usuarios"
    echo "3 - Directorio personal"
    echo "4 - Copia de seguridad"
    echo
    echo "Pulse ENTER sin insertar nada para terminar"
    echo
}

function readOperation () {
    read -p "Introduzca la operación: " operation
}

function doOperation () {
    case $operation in
        1) cat /etc/group | cut -d: -f1,4
            ;;
        2) cat /etc/passwd | cut -d: -f1,6
            ;;
        3) ls -ld $HOME
            ;;
        4) cp -a $HOME /infopacense/$USER
            ;;
        *) echo "La operación $operation no es conocida"
            ;;
    esac
    echo
    read -p "Pulse ENTER para continuar..."
}

showMenu
readOperation
while [ ! -z $operation ]; do
    doOperation
    showMenu
    readOperation
done