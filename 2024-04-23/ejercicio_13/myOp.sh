#!/bin/bash

if [ -z $1 ]
then
    echo "Error: Debes introducir un argumento [a-g]"
    exit 1
fi

case $1 in
    a)
        whoami
        ;;
    b)
        pwd
        ;;
    c)
        ps aux 
        ;;
    d)
        who | awk '{print $1}' | sort | uniq 
        ;;
    e)
        echo $HOME 
        ;;
    f)
        cat /etc/passwd | grep $(whoami) 
        ;;
    g)
        date
        ;;
    *)
        echo "Error: No se reconoce $1. Debes introducir un argumento [a-g]"
        ;;
esac
