#!/bin/bash
#
# Desc.: Crea una cuenta de desarrollador para la empresa
# Autor: Javier Pedrero Martín - javier@educatica.es
# Fecha: Marzo 2021
function error () {
    echo "[ERROR] - $1"
    exit 1
}

if [ $(id -u) -ne 0 ]; then
    error "El script se debe ejecutar como root"
fi
if [ $# -lt 2 ]; then
    error "Se debe pasar por parámetro el nombre de un usuario y de un grupo"
fi

usuario=$1
grupo=$2
baseDir=/castelar
if ! id $usuario &> /dev/null; then
    adduser $usuario --gecos ""
fi
if ! grep -w ^$grupo /etc/group &> /dev/null; then
    addgroup $grupo
fi
if ! id $usuario | grep $grupo &> /dev/null; then
    adduser $usuario $grupo
fi
if [ ! -d $baseDir ]; then
    mkdir -p $baseDir
fi

homeDir=$(grep -w ^$usuario /etc/passwd | cut -d: -f6)
groupDir=$homeDir/$grupo
logFile=$baseDir/developers.log
if [ -d $groupDir ]; then
    echo "El directorio $groupDir ya existe"
else
    mkdir -p $groupDir/{web,desktop,apps,resources,docs}/{src,bin,help}
fi
chown -R $usuario:$grupo $groupDir
chmod o= $groupDir
echo $usuario - $grupo »> $logFile
date >> $logFile >> $logFile
ls -ld $groupDir >> $logFile
ls -1hR $groupDir >> $logFile
