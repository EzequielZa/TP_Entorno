# Trabajo Practico Entorno de Programacion TUIA

## Montar la imagen a partir del Dockerfile:

Primero descagarmos los archivos y con `Ctrl+Alt+t` abrimos una nueva terminal.
Nos posicionamos dentro de la carpeta descargada y escribimos:
```
docker build -t nombre-de-la-imagen la-ruta-del-Dockerfile
```
Podemos usar punto (.) al final del comando indicando que el archivo Dockerfile se encuentra en el directorio actual.
Una vez que la imagen se ha creado correctamente, debes montarla utilizando el comando "docker run -it" de la siguiente manera:
```
docker run -it nombre-de-la-imagen
```
En caso de permiso denegado usar: 
```
sudo docker build -t nombre-de-la-imagen la-ruta-del-Dockerfile
sudo docker run -it nombre-de-la-imagen
```
La imagen crea un **WORKDIR** llamada **TP_Entorno** y dentro de el crea una carpeta libs con un archivo de texto y todos los scripts necesarios.


## Funcionamiento:

Una vez ejecutada la imagen de nuestro contenedor se nos preguntara la ruta o el nombre del archivo de texto que queremos analizar si este se encuentra en el mismo directorio, en nuestro caso nuestro archivo de prueba esta dentro de la carpeta libs por lo que introducimos la ruta: ``libs/Archivo.txt``

Y se desplegara un menu de la siguiente manera:
![This is an image](https://i.ibb.co/4JfxRY7/image.png)

## Menu:
+ **statsWords.sh:** Indicador estadístico de longitud de palabras (la más corta, la más larga y el
promedio de longitud).
```
La palabra más corta es: y
La palabra más larga es: documentación
El promedio de longitud de palabras es: 5
```

+ **statsUsageWords.sh:** Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
letras. (se muestra un Top Ten de estas palabras ordenadas desde la que tiene
más apariciones a la que tiene menos). Es decir, se filtran las palabras que
tengan al menos 4 letras y de éstas, y se eligen las 10 más usadas.           
```
4 repositorio
4 para
3 texto
3 estar
3 contenedor
2 scripts
2 realizar
2 presente
2 mismo
2 gitlab
```

+ **findNames.sh:** Identificación de nombres propios (se identifican sólo si están en este formato
Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
Ejemplos: Mateo, Estonoesunnombre, Ana.
```
Los nombres encontrados son: 
Deberán
Dockerfile
Tanto
Dockerfile
Recomendamos
Una
Puede
README.md
```

+ **statsSentences.sh:** Indicador estadístico de longitud de oraciones (la más corta, la más larga y el
promedio de longitud).
```
La oracion mas larga es:   En ese mismo repositorio debe estar la documentación suficiente para comprender cómo desplegar el contenedor y ejecutar la     aplicación, con algunas capturas de ejecución o lo que consideren logre explicitar el funcionamiento y visualizar resultados. 
La oracion mas corta es:   Deberán editar un Dockerfile y construir una imagen.
El promedio de longitud es 23
```
+ **blankLinesCounter.sh:** Contador de líneas en blanco.
```
La cantidad de espacios en blanco (o espacios) es: 170
```
