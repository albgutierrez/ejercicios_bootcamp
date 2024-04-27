#!/bin/bash
function Menu(){
    echo -e "\nDebe elegir una de estas opciones: usuarios, grupos, procesos, ficheros, directorio"
    echo $(date)
}

opciones="usuarios grupos procesos ficheros directorio"
read -p "Elige una opción: " opcion

case $opcion in
    usuarios)
        usuarios=$(cat /etc/passwd | grep /bin/bash | grep /home | cut -d":" -f1)
        echo "Usuarios en el sistema: $usuarios"
        ;;
    grupos)
        grupos=$(cat /etc/group | cut -d":" -f1 | sort)
        echo "Grupos en el sistema: $grupos"
        ;;
    procesos)
        procesos=$(ps ax | awk '{ print $5 }')
        echo "Procesos en ejecución: $procesos"
        ;;
    ficheros)
        ficheros=$(ls)
        echo "Ficheros del directorio actual: $ficheros"
        ;;
    directorio)
        du -h -d1 $HOME
        ;;
    *)
        Menu
        ;;
esac


