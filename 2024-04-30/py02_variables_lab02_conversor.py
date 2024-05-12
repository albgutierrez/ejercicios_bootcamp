#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py02_variables_lab02_conversor.md

km = 12.25
millas = 7.38

millas_a_km = millas * 1.609344 
km_a_millas = km / 1.609344 

print(millas, " millas son ", round(millas_a_km, 2), " kilómetros ")
print(km, " kilómetros son ", round(km_a_millas, 2), " millas ")