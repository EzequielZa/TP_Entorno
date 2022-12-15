#!/bin/bash

# Filtra las palabras que tengan al menos 4 letras
palabras_filtradas=$(grep -oE "[a-zA-Z]{4,}" $1)

# Ordena las palabras filtradas alfabéticamente
palabras_ordenadas=$(echo "$palabras_filtradas" | sort)

# Cuenta cuántas veces aparece cada palabra
contador=$(echo "$palabras_ordenadas" | uniq -c)

# Muestra las 10 palabras más usadas
echo "$contador" | sort -rn | head -n 10
