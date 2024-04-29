#!/bin/bash
#
# Autor: Javier Pedrero Martín - javierdeducatica.es
# Fecha: Marzo 2021

function error () {
    echo "[ERROR] - $1"
    exit 1
}

function logUserInfo () {
    echo $usuario
    echo $grupo
    date
    ls -ld $dirEmpleado
    ls -R $dirEmpleado
}

# ===== BLOQUE 01 =====
# Se comprueba si el script se ejecuta por root y si se pasan los parámetros necesarios
if [ $(id -u) -ne 0 ]; then
    error "El script se debe ejecutar por root"
fi
if [ $# -lt 2 ]; then
    error "Se deben pasar el nombre del usuario y del grupo por parámetro"
fi 

# ===== BLOQUE 02 =====
# Se comprueba si el usuario y el grupo existen en el sistema
# Si no existen, se crean
# Si existen, se informa al usuario
# Se añade el usuario al grupo
# Si ya pertenece, se informa al usuario
usuario=$1
grupo=$2
if ! id $usuario &> /dev/null; then
    adduser $usuario --gecos ""
else
    echo "El usuario $usuario ya existe en el sistema"
fi
if ! grep -w ^$grupo /etc/group &> /dev/null; then
    addgroup $grupo
else
    echo "El grupo $grupo ya existe en el sistema"
fi
if ! grep -w ^$grupo /etc/group | cut -d: -f4 | grep $usuario &>/dev/null; then
    adduser $usuario $grupo
else
    echo "El usuario $usuario ya pertenece a $grupo"
fi

# ===== BLOQUE 03 =====
# Se crean los directorios necesarios dentro de $dirBase
# Se cambian los permisos de los directorios
# Se añade la información al log
dirBase=/infopacense
dirEmpleado=$dirBase/$usuario
logFile=$dirBase/empleados.log
if [ ! -d $dirBase ]; then
    mkdir $dirBase
fi
if [ -d $dirEmpleado ]; then
    echo "El directorio $dirEmpleado ya existe en el sistema"
else
    mkdir -p $dirEmpleado/{shared,docs,new,done}/{private,protected,public}
fi
chown -R $usuario:$grupo $dirEmpleado
chmod o= $dirEmpleado
logUserInfo >> $logFile
