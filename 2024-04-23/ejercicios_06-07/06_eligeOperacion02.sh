#!/bin/bash
function Menu(){
    echo -e "\nDebe elegir una de estas opciones: usuarios, grupos, procesos, ficheros, directorio"
    echo $(date)
}

function Usuarios(){
    usuarios=$(cat /etc/passwd | grep /bin/bash | grep /home | cut -d":" -f1)
    echo "Usuarios en el sistema: $usuarios"
}
function Grupos(){
    grupos=$(cat /etc/group | cut -d":" -f1 | sort)
    echo "Grupos en el sistema: $grupos"
}
function Procesos(){
    procesos=$(ps ax | awk '{ print $5 }')
    echo "Procesos en ejecución: $procesos"
}
# Funcion que muestra el listado de ficheros del directorio $HOME del usuario actual
function Ficheros(){
    ficheros=$(ls)
    echo "Ficheros del directorio actual: $ficheros"
}
# Funcion que hace un du -h -d1 del $HOME del usuario actual
function Directorio(){
    du -h -d1 $HOME
}

opciones="usuarios grupos procesos ficheros directorio"
read -p "Elige una opción: " opcion

case $opcion in
    usuarios)
        Usuarios
        ;;
    grupos)
        Grupos
        ;;
    procesos)
        Procesos
        ;;
    ficheros)
        Ficheros
        ;;
    directorio)
        Directorio
        ;;
    *)
        Menu
        ;;
esac


