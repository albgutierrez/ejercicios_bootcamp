#!/bin/bash

fichero_salida="/tmp/IPError.log"
if [ $# -ne 1 ]; then
    echo "Error: Debe especificar IP o nombre del servidodr"
    exit 1
fi

servidor=$1
while true; do
    ping -c 1 $servidor > /dev/null
    if [ $? -ne 0 ]; then
        date >> $fichero_salida
    fi
    sleep 5
done