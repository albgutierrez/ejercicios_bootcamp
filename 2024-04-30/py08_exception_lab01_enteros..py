#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py08_exception_lab01_enteros.md

def es_numero(val):
    # Creo esta función y no uso isnumber porque no funciona con números negativos
    try:
        int(val) 
        return True
    except ValueError:
        return False

def read_int(prompt, min, max):
    valor_correcto=False
    while not valor_correcto:
        numero = input(prompt)
        if es_numero(numero)== False:
            print("Error: entrada incorrecta")
            continue
        else:
            numero = int(numero)
        if numero < min or numero > max:
            print("Error: El valor no está dentro del rango permitido (" + str(min) + ".." + str(max) + ")")
            continue
        else:
            return numero


v = read_int("Ingresa un numero de -10 a 10: ", -10, 10)

print("El número es:", v)
