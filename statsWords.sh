#!/bin/bash

# Inicializa las variables
str=$(cat $1)
mayor=0
menor=1000
long_total=0
cont=0

# Itera sobre cada línea del archivo
for linea in $str;
do
	# Calcula la longitud de la palabra
	longitud=$(echo ${#linea})

	# Actualiza la palabra más larga si es necesario
	if [[ $longitud -gt $mayor ]]
	then
		mayor=$(($longitud))
		palabra_larga=$linea
	fi

	# Actualiza la palabra más corta si es necesario
	if [[ $longitud -lt $menor ]]
	then
		menor=$(($longitud))
		palabra_corta=$linea
	fi

	# Acumula la longitud de las palabras
	long_total=$(($long_total + $longitud))
	cont=$(($cont + 1))
done

# Calcula el promedio de longitud de las palabras
promedio=$(($long_total / $cont))

# Imprime los resultados
echo "La palabra más corta es: $palabra_corta"
echo "La palabra más larga es: $palabra_larga"
echo "El promedio de longitud de palabras es: $promedio"
