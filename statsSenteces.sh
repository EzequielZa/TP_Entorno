#!/bin/bash

#Se guarda el contenido del texto en la variable str y se inician los contadores pertinentes
str=$(cat $1)
cont_larga=0
cont_corta=1000
total_palabras=0
total_oraciones=0

# Recorremos la cadena carácter a carácter
oracion=""

for char in $str
do
  #Si su ultimo caracter es un punto significa que llegamos al final de la oracion
  if [[ "${char: -1}" == "." ]]; then
    #Guardamos la ultima palabra y tambien la cantidad de palabras que tiene la oracion con la opcion -w de wc
    oracion="${oracion} ${char}"
    numero_palabras=$(wc -w <<< $oracion)
    
    #Si el numero de palabras de la oracion supera al contador que lleva la  oracion con mas palabras
    #Entoces este se cambia y la oracion mas larga pasa a ser la de esta iteracion
    if [[ $numero_palabras -gt $cont_larga ]]; then
      cont_larga=$numero_palabras
      oracion_mas_larga=$oracion
    fi
    
    #Si el numero de palabras de la oracion es menor al contador que lleva la  oracion con menos palabras
    #Entoces este se cambia y la oracion mas corta pasa a ser la de esta iteracion
    if [[ $numero_palabras -lt $cont_corta ]]; then
      cont_corta=$numero_palabras
      oracion_mas_corta=$oracion
    fi
    
    #Se cuentan la cantidad total de palabras y oraciones para el promedio
    total_palabras=$(($total_palabras + $numero_palabras))
    total_oraciones=$(($total_oraciones + 1))
    #Se inicializa nuevamente la oracion vacia
    oracion=""

  else
    #En caso de no terminar con un punto la oracion sigue por lo que agregamos la palabra y continuamos
    oracion="${oracion} ${char}"
  fi
done

#Se muestran los resultados en pantalla
echo "La oracion mas larga es:  ${oracion_mas_larga}"
echo "La oracion mas corta es:  ${oracion_mas_corta}"
echo "El promedio de longitud es $((total_palabras / total_oraciones))"

