#!/bin/bash
a-"hola"
b=a
echo "a = $a"
echo "b = $b"
eval b=\$$b
echo "b ahora = $b"
exit
