#!/bin/bash

# Comprobar si somos root para poder crear ficheros en /
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: Este script debe ser ejecutado como usuario root." >&2
    exit 1
fi

dirBase="/empresa"
dirPrivado="$dirBase/privado"
directorios="publico privado reporteros editores"

# Comprobar si los directorios $dirBase/$directorios existen
for directorio in $directorios; do
    if [ ! -d "$dirBase/$directorio" ]; then
        echo "Creando directorio $dirBase/$directorio"
        mkdir -p "$dirBase/$directorio"
    fi
done

# Cambiar el propietario de los directorios
chown -R root:empresa "$dirBase"
chmod -R 750 "$dirBase"

chown -R alfredoff:reporteros "$dirBase/reporteros"
chmod -R 750 "$dirBase/reporteros"

chown -R ramonam:editores "$dirBase/editores"
chmod -R 750 "$dirBase/editores"

chmod -R 770 "$dirBase/publico"

chown marinapg:empresa "$dirBase"

# Leyemos los usuarios que pertencen al grupo empresa
grp_members=$(cat /etc/group | grep empresa | cut -d":" -f4)

# Dividimos la cadena de grp_members en un array
usuarios="marinapg,alfredoff,ramonam"
IFS=',' read -ra usuario_array <<< "$grp_members"

# Recorremos el array, creamos los directorios y les damos permisos

for grp_member in "${usuario_array[@]}"; do
    if [ ! -d "$dirPrivado/$grp_member" ]; then
        echo "Creando directorio $dirPrivado/$grp_member"
        mkdir -p "$dirPrivado/$grp_member"
    fi
    chmod 700 "$dirPrivado/$grp_member"
    chown $grp_member:empresa "$dirPrivado/$grp_member"
done