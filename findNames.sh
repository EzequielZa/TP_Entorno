#!/bin/bash

#Se guarda el contenido del texto en la variable str
str=$(cat $1)

#Recorremos cada palabra del string
for palabra in $str
do
    #Si la palabra comienza con mayuscula y tiene mas de dos letras la guardamos
    if [[ $palabra =~ ^[A-Z].{2,} ]]; then

        nombres="${nombres} ${palabra}"
    fi

done

#Mostramos los nombres
echo "Los nombres encontrados son: "
for nombre in $nombres
do
    echo $nombre
done