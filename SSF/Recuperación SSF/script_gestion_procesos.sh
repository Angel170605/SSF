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

  # Si los argumentos son correctos, el script comprobará que el proceso del sistema que más porcentaje de CPU consume esté por debajo de maxCPU y el proceso del sistema que más porcentaje de memoria consume esté por debajo de maxMem. Esta comprobación se debe repetir cada 30 segundos de forma indefinida.
 
  # Si hay algún proceso que supere alguno de estos valores (si son los dos, elegir cualquiera de ellos), se mostrará información de dicho proceso y luego se imprimirá un menú para:

  # Ignorar el aviso y seguir comprobando
  # Disminuir en 3 puntos la prioridad del proceso
  #  Interrumpir el proceso
  #  Terminar el proceso
  #  Finalizar inmediatamente el proceso
  #  Detener el proceso ("congelarlo" de forma evitable)
  #  Detener el proceso ("congelarlo" de forma INevitable)
  
  trap "echo 'Interrumpiendo ejecución'; exit 0" sigint
  trap "echo 'Finalizando ejecución'; exit 0" sigint
  trap "uptime" SIGUSR1
  trap "ulimit -a" SIGUSR2
