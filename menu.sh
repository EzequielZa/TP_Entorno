#!/bin/bash

opcion=0

# Leer el nombre del archivo de texto
read -r -p "Ingresa el nombre del archivo de texto o la ruta en la que se encuentra: " archivo

# Bucle que se ejecuta mientras la opción seleccionada no sea la opción de salida
while true; do
  # Mostrar el menú
  echo "Menú"
  echo "1. statsWords.sh"
  echo "2. statsUsageWords.sh"
  echo "3. findNames.sh"
  echo "4. statsSentences.sh"
  echo "5. blankLinesCounter.sh"
  echo "6. Salir"

  # Leer la opción seleccionada por el usuario
  read -r -p "Eliga una opcion: " opcion

  # Ejecutar el script correspondiente a la opción seleccionada
  case $opcion in
    1) source libs/statsWords.sh $archivo
       ;;
    2) source libs/statsUsageWords.sh $archivo
       ;;
    3) source libs/findNames.sh $archivo
       ;;
    4) source libs/statsSenteces.sh $archivo
       ;;
    5) source libs/blankLinesCounter.sh $archivo
       ;;
    6) break
       ;;
  esac
done

