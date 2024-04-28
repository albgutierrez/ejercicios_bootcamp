#!/bin/bash

source funciones.sh
# Comprobamos que el script se ejecuta con permisos de superusuario
if [ "$(id -u)" -ne 0 ]; then
    Error 1 "Este script debe ser ejecutado como usuario root."
fi

# Comprobamos que se ha pasado un argumento
if [ $# -ne 1 ]; then
    Error 2 "Debe especificar un usuario."
fi

# Comprobamos que el usuario existe
if ! id $1 &> /dev/null; then
    Error 3 "El usuario $1 no existe."
fi

usuario=$1

# Obtenemos el $HOME de $usuario
dirUsuario=$(cat /etc/passwd | grep $usuario | cut -d: -f6)

# Obtenemos el GID del grupo principal de $usuario
gid=$(cat /etc/passwd | grep $usuario | cut -d: -f4)

# Obtenemos el nombre del grupo principal de $usuario
grupo=$(cat /etc/group | grep $gid | cut -d: -f1)

webSiteDir="$dirUsuario/webSite"
if [ -d $webSiteDir ]; then
    Error 4 "El directorio $webSiteDir ya existe."
fi
mkdir -p $webSiteDir
chown -R $usuario:$grupo $webSiteDir
chmod 750 $webSiteDir
