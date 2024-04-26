#!/bin/bash
## Este script crea directorios siguiendo una estructura
## predefinida en un ejercicio
##
## Autor: Alberto Gutierrez - 23-04-24

cd $HOME
mkdir publico privado compartido
cd publico
mkdir -p documentos musica videos imagenes

cd ..
cd privado
mkdir -p documentos musica videos imagenes mensajes logs

cd ..
cd compartido
mkdir -p grupo empresa departamento

cd ..
ls -l | grep -E 'publico|privado|compartido'
ls publico/ privado/ compartido/
