#!/bin/bash
#
########################################
#
# Nombre: Script Gestión de Software
# Autor: Ángel Pérez <angelpd170605@gmail.com>
# Objetivo del script: Gestionar un paquete de software. Ofrecerá distintas opciones dependiendo de si el paquete está instalado o no.
# Entradas: Nombre de un paquete
# Salidas: Paquete instalado, Paquete no instalado, opciones [Mostrar versión del paquete/Reinstalarlo/Actualizarlo/Eliminarlo/Eliminarlo totalmente]
#
########################################

sudo apt update > /dev/null

paquete="$1"

while [ -z "$1" ]; do
    read -p "Introduzca el nombre del paquete: " nombre_paquete
done

mostar_informacion(){
 nombre_paquete="$1"
apt show "$nombre_paquete"
}

instalar_paquete() {
nombre_paquete="$1"
sudo apt install "$nombre_paquete"
}

paquete_instalado() {
nombre_paquete="$1"
dpkg -l | grep -w "$nombre_paquete" &> /dev/null
}

if paquete_instalado "$paquete"; then
    echo "El paquete $paquete está instalado."
    echo "Opciones disponibles:"
    echo "1. Mostrar su versión"
    echo "2. Reinstalarlo"
    echo "3. Actualizarlo (si es actualizable)"
    echo "4. Eliminarlo (guardando la configuración)"
    echo "5. Eliminarlo totalmente"

    read -p "Selecciona una opción (1-5): " opcion

    case "$opcion" in
        1) mostrar_informacion "$paquete";;
        2) instalar_paquete "$paquete";;
        3) sudo apt upgrade "$paquete";;
        4) sudo apt remove "$paquete";;
        5) sudo apt purge "$paquete";;
        *) echo "Opción no válida.";;
    esac
else
    resultados=$(apt search "$paquete")
    if [ -z "$resultados" ]; then
        echo "No se encontró ningún paquete con el nombre \"$paquete\" en los repositorios."
    else
        echo "Resultados de búsqueda:"
        echo "$resultados"
    fi
fi
