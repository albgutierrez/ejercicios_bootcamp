#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py02_operadores_lab01_prioridades.py

x = float(input("Ingresa el valor para x: "))
# Coloca tu código aquí

resultado = 1 / (x + (1 / (x + (1 / (x + (1 / x))))))
print("El resutlado es: ", resultado)
