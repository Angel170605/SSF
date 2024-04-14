#!/bin/bash
#
########################################
#
# Nombre: Calcula segundos
# Autor: Ángel Pérez <angelpd170605@gmail.com>
# Objetivo del script: Converitr el tiempo indicado en segundos.
# Entradas: dias, horas, minutos, segundos
# Salidas: total_segundos
#
########################################

if [ $# -ne 4 ]; then
    echo "Error. Debe indicar 4 argumentos (dias, horas, minustos, segundos)"
    exit
fi

dias=$1
horas=$2
minutos=$3
segundos=$4

total_segundos=$((dias*86400+horas*3600+minutos*60+segundos))

echo "$dias dias, $horas horas, $minutos minutos y $segundos segundos son $total_segundos segundos"
