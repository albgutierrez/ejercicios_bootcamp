#!/bin/bash
# Desc.: Muestra información de usuario y sistema
# Autor: Javier Pedrero Martín - javier@educatica.es
# Fecha: Marzo 2021
function muestraMenu () {
    clear
    echo "Menu de opciones"
    echo
    echo "a - Muestra las 5 primeras líneas del fichero de grupos"
    echo "b - Muestra las 5 últimas líneas del fichero de usuarios"
    echo "d - Muestra la fecha actual"
    echo "h - Muestra permisos del directorio personal"
    echo "j - Muestra información de identificación del usuario"
    echo "p - Muestra los procesos del usuario actual"
    echo "w - Muestra los usuarios conectados al sistema"
    echo
    echo "Pulse ENTER sin insertar ninguna opción para salir"
    echo
}

function leeOpcion () {
    read -p "Introduzca una opción: " opcion
}

function realizaOpcion () {
    case $opcion in
        a) head -5 /etc/group
            ;;
        b) tail -5 /etc/passwd
            ;;
        d) date
            ;;
        h) ls -ld $HOME
            ;;
        i) id
            ;;
        p) ps aux | grep $USER
            ;;
        w) who
            ;;
        *) echo "Opción $opcion no reconocida"
            ;;
    esac
    echo
    read -p "Pulse ENTER para continuar..."
}

muestraMenu
leeOpcion
while [ ! -z $opcion ]; do
    realizaOpcion
    muestraMenu
    leeOpcion
done