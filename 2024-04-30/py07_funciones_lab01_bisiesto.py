#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py07_funciones_lab01_bisiesto.md

def es_bisiesto(año):
    if año % 4 == 0 and año % 100 != 0 or año % 400 == 0:
        return True
    else:
        return False

año = int(input("Introduzca un año: "))
print(es_bisiesto(año))

