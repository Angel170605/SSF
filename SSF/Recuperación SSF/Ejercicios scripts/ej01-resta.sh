#!/bin/bash
#
########################################
#
# Nombre: Resta
# Autor: Ángel Pérez <angelpd170605@gmail.com>
# Objetivo del script: Restar dos números.
# Entradas: num1, num2
# Salidas: result
#
########################################

if [ "$# -ne 2" ]; then
    echo "Error. Debe indicar dos valores."
    exit
fi

num1=$1
num2=$2
result=$(($num1-$num2))

echo "El resultado de la operación $num1 - $num2 = $result"
