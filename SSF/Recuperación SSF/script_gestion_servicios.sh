#!/bin/bash
#
########################################
#
# Nombre: Script Gestión de Servicios
# Autor: Ángel Pérez <angelpd170605@gmail.com>
# Objetivo del script: Gestionar un paquete de software. Ofrecerá distintas opciones dependiendo de si el paquete está instalado o no.
# Entradas: Nombre de un paquete
# Salidas: Paquete instalado, Paquete no instalado, opciones [Mostrar versión del paquete/Reinstalarlo/Actualizarlo/Eliminarlo/Eliminarlo totalmente]
#
########################################

servicio="$1"

while [ -z "$servicio" ]; do
  read -p "Por favor, indique el nombre del servicio a gestionar" servicio
done

systemctl status "$servivio" >/dev/null 2>/dev/null
if [ "$?" -eq 4 ]; then
    echo "Error. El servicio $servicio no se ha encontrado."
    exit 10
fi

if [ systemctl is-active $servicio ]; then
  echo "El servicio $servicio está activo."

else
  echo "El servicio $servicio está inactivo."

  fi

if [ systemctl is-enabled $servicio == "enabled" ]; then
  echo "El servicio $servicio está habilitado."

elif [ systemctl is-enabled $servicio == "disabled" ]; then
  echo "El servicio $servicio está deshabilitado"

elif [ systemctl is-enabled $servicio == "masked"]; then
  echo "El servicio $servicio está enmascarado"

  fi
  
#Mostrar un menú con las siguientes opciones (van a depender del estado del servicio)
#Activar el servicio (si estaba inactivo y NO enmascarado. Si estaba ya activo, se ofrecerá la opción de Desactivarlo).
#Habilitar el servicio (si estaba deshabilitado. Si estaba habilitado, se ofrecerá la opción de Deshabilitarlo).
#Enmascarar el servicio (si estaba desenmascarado. Si estaba ya enmascarado, se ofrecerá la opción de Desenmascararlo).

echo "¿Qué quiere hacer con el servicio?"
echo "1. Activar/Descativar el servicio"
echo "2. Habilitar/Deshabilitar el servicio"
echo "3. Enmascarar/Desenmascarar el servicio"
echo "4. Mostrar la configuración del servicio"
echo "5. Reiniciar el servicio (Dejándolo activo)"
echo "6. Reiniciar el servicio (Dejándolo en su último estado)"
echo "7. "
echo "8. "
echo "9. "
echo "10. "
echo "11. "

#Mostrar configuración del servicio.
#Reiniciar el servicio (dejando el servicio activo).
#Reiniciar el servicio (dejando el servicio en su último estado).
#Aplicar cambios en la configuración dejando el servicio activo (intentando evitar la interrupción del servicio).
#Aplicar cambios en la configuración dejando el servicio en su último estado (intentando evitar la interrupción del servicio).
#Asignar la configuración de habilitado/deshabilitado indicada por el desarrollador (vendor preset).
#Mostrar el tiempo de carga total del sistema.
#Mostrar el tiempo de carga de este servicio.
#Mostrar el nivel de ejecución actual del equipo.
#Apagar el equipo (usar el comando de control de servicios).
#Reiniciar el equipo (usar el comando de control de servicios).
#SALIR
