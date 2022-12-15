#!/bin/bash

#la opcion -o de grep, que muestra solo las partes del texto que coinciden con el patrón de búsqueda
#El resultado de grep se pasa a wc, que cuenta el número de líneas
#Se interpreta lineas en blanco como espacios por lo que buscamos "[ ]"
numero_espacios_blanco=$(grep -o "[ ]" $1 | wc -l)
echo "La cantidad de espacios en blanco (o espacios) es: ${numero_espacios_blanco}"

