#!/bin/bash

opcion=1
while [ $opcion != "s" ]; do
    echo "Menu de opciones"
    echo
    echo "1 - Usuarios en el sistema"
    echo "2 - Ocupación en disco"
    echo "3 - Procesos"
    echo "S - Salir"
    echo
    echo -n "Elija una opción: "
    read opcion
    case $opcion in
        1) 
            who
            ;;
        2) 
            du -sh $HOME
            ;;
        3) 
            ps -A
            ;;
        S|s) 
            echo "Fin del proceso"
            opcion=s
            ;;
        *) 
            echo "opcion $opcion no conocida"
            ;;
    esac
done
