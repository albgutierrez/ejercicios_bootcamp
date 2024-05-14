#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py07_funciones_lab05_convirtiendo_combustible.md

def l100km_to_mpg(liters):
    mpg = (100 / millas_km) / (liters / galones_lts) * 1000
    return mpg

def mpg_to_l100km(miles):
    return (100 * galones_lts) / (miles * millas_km) * 1000
    pass

millas_km = 1609.344
galones_lts = 3.785411784

print(l100km_to_mpg(3.9))
print(l100km_to_mpg(7.5))
print(l100km_to_mpg(10.))
print(mpg_to_l100km(60.3))
print(mpg_to_l100km(31.4))
print(mpg_to_l100km(23.5))