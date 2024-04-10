#!/bin/bash
#
########################################
#
# Nombre: Script Gestión de Procesos
# Autor: Ángel Pérez <angelpd170605@gmail.com>
# Objetivo del script: Gestionar un paquete de software. Ofrecerá distintas opciones dependiendo de si el paquete está instalado o no.
# Entradas: maxCPU (Porcentaje máximo de uso de CPU), maxMem (Porcentaje máximo de uso de la memoria)
# Salidas: error100, error150, error200, Información del proceso, menús con opciones
#
########################################

if [ "$#" -ne 2 ]; then
echo "Error. Sólo se admietn 2 argumentos [maxCPU, MaxMem]. Por favor, indique los 2 argumentos en dicho orden."
exit 100

elif  [ "$2" -gt 100 ]; then
echo "Error. La capacidad maxCPU no puede ser superior a 100. Por favor, indique un valor entre 0 y 100."
exit 150

elif [ "$1" -lt 0 ] || [ "$0" -lt 0 ]; then
echo "Error. Ninguno de los valores requeridos puede ser inferior a 0. Por favor, indique valores iguales o superiores a 0"
exit 200

fi

while true; do
  
  trap "echo 'Interrumpiendo ejecución'; exit 0" sigint
  trap "echo 'Finalizando ejecución'; exit 0" sigint
  trap "uptime" SIGUSR1
  trap "uliomit -a" SIGUSR2
