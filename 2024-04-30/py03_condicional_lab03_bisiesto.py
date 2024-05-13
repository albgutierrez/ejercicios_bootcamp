#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py03_condicional_lab03_bisiesto.md

año = int(input("Introduzca un año: "))

if año % 4 == 0 and año % 100 != 0 or año % 400 == 0:
    print("El año", año, "es bisiesto.")
else:
    print("El año", año, "es común.")
