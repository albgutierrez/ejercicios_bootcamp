#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py03_condicional_lab02_impuesto_ipi.md

ingreso = float(input("Ingrese el ingreso anual:"))
if ingreso <= 85528:
    impuesto = (ingreso * 0.18) - 556.2
else:
    impuesto = 14839.2 + (ingreso - 85528) * 0.32

if impuesto < 0:
    impuesto = 0

print("El impuesto es:", round(impuesto, 0), "pesos")