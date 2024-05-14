#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py07_funciones_lab02_cuantos_dias.md

def is_year_leap(year):
    if year % 4 == 0 and year % 100 != 0 or year % 400 == 0:
        return True
    else:
        return False


def days_in_month(year, month):
    if month < 1 or month > 12:
        return None

    dias_por_mes = {
            1: 31,
            2: 29 if is_year_leap(year) else 28,
            3: 31,
            4: 30,
            5: 31,
            6: 30,
            7: 31,
            8: 31,
            9: 30,
            10: 31,
            11: 30,
            12: 31
        }
    return dias_por_mes[month]

test_years = [1900, 2000, 2016, 1987]
test_months = [2, 2, 1, 11]
test_results = [28, 29, 31, 30]
for i in range(len(test_years)):
    yr = test_years[i]
    mo = test_months[i]
    print(yr, mo, "->", end="")
    result = days_in_month(yr, mo)
    if result == test_results[i]:
        print("OK")
    else:
        print("Error")
