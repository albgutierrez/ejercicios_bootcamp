#!/bin/bash
# Este script tiene como finalidad almacenar funciones que pueden ser utilizadas en otros scripts

function Error() {
    echo "Error $1: $2" >&2
    exit $1
}