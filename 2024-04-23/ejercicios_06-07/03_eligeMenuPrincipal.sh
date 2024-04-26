#!/bin/bash 

# 03 – Función eligeMenuPrincipal
function eligeMenuPrincipal {
    seleccion=99
    until [ $seleccion -eq 0 ];
    do
        muestraMenuPrincipal
        read seleccion

        case $seleccion in 
            0)
                echo "Se saldrá del programa"
                ;;
            1)
                echo "Se ha elegido la opciones de usuarios"
                ;;
            2)
                echo "Se ha elegido opciones de ficheros"
                ;;
            3)
                echo "Se ha elegido copias de seguridad"
                ;;
        esac
        sleep 2
    done
}

function muestraMenuPrincipal {
    clear
    echo -e "\nMenú principal\n\n"
    echo -e "1 - Opciones sobre usuarios\n\n"
    echo -e "2 - Opciones sobre ficheros\n\n"
    echo -e "3 - Copias de seguridad\n\n"
    echo -e "0 - Salir\n\n"
}
eligeMenuPrincipal
