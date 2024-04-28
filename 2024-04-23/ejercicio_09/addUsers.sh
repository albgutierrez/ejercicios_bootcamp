#!/bin/bash

source funciones.sh
# Comprobamos que el script se ejecuta con permisos de superusuario
if [ "$(id -u)" -ne 0 ]; then
    Error 1 "Este script debe ser ejecutado como usuario root."
fi
userList="alfredoff marinapg ramonam jesusrp rosarp evaha miguelmp"
groupList="empresa reporteros empleados directivos redactores editores clientes bloqueados"

empresa="alfredoff marinapg ramonam jesusrp rosarp evaha miguelmp"
empleados="alfredoff marinapg ramonam jesusrp"
directivos="evaha miguelmp"
redactores="alfredoff jesusrp evaha"
editores="marinapg ramonam rosarp miguelmp"
clientes="miguelmp"
bloqueados=""

# Generamos los usuarios de userList si existen
for user in $userList; do
    if ! id $user &> /dev/null; then
        adduser $user --disabled-password --gecos "" &> /dev/null
        echo "Usuario $user creado."
    else
        echo "El usuario $user ya existe."
    fi
done

# Generamos los grupos de groupList si existen
for group in $groupList; do
    if ! getent group $group &> /dev/null; then
        groupadd $group
        echo "Grupo $group creado."
    else
        echo "El grupo $group ya existe."
    fi
done

# Añadimos los usuarios a sus grupos correspondientes
for user in $empresa; do
    usermod -aG empresa $user
done    

for user in $empleados; do
    usermod -aG empleados $user
done

for user in $directivos; do
    usermod -aG directivos $user
done

for user in $redactores; do
    usermod -aG redactores $user
done

for user in $editores; do
    usermod -aG editores $user
done

for user in $clientes; do
    usermod -aG clientes $user
done

for user in $bloqueados; do
    usermod -aG bloqueados $user
done