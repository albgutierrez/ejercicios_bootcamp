#!/bin/bash
# Este script crea los usuarios y grupos necesarios para el ejercicio
# crearDirectorios.sh. Debe ser ejecutado como root.

function Crear() {
    for grupo in $grupos
    do
        if ! getent group $grupo &> /dev/null; then
            echo "Creando grupo $grupo" 
            sudo groupadd $grupo
        fi
    done
    for usuario in $usuarios
    do
        if ! id $usuario &> /dev/null; then
            echo "Creando usuario $usuario"
            sudo useradd -m -G empresa $usuario &> /dev/null
        fi
    done
}

function Borrar() {
    for usuario in $usuarios
    do
        if id $usuario &> /dev/null; then
            echo "Borrando usuario $usuario"
            sudo userdel -r $usuario &> /dev/null
        fi
    done
    for grupo in $grupos
    do
        if getent group $grupo &> /dev/null; then
            echo "Borrando grupo $grupo"
            sudo groupdel $grupo &> /dev/null
        fi
    done
}

####################### INICIO DEL SCRIPT #######################
usuarios="alfredoff marinapg ramonam jesusrp rosarp evaha miguelmp"
grupos="empresa reporteros empleados directivos redactores editores clientes bloqueados"

# Comprobar si somos root para poder crear usuarios y grupos en el sistema
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: Este script debe ser ejecutado como usuario root." >&2
    exit 1
fi

# Comprobar si se ha pasado un argumento
if [ $# -ne 1 ]; then
    echo "Error: Debe especificar una acción a realizar (crear o borrar)." >&2
    exit 1
fi

if [ "$1" = "crear" ]; then
    Crear
elif [ "$1" = "borrar" ]; then
    Borrar
else
    echo "Error: Acción no válida. Las acciones válidas son 'crear' y 'borrar'." >&2
    exit 1
fi