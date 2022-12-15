# Indica la imagen base que se usará para crear la imagen Docker
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    readline-common \
    libreadline-dev

LABEL maintainer="Ezequiel Zahradnicek"

# Establece el directorio de trabajo en el contenedor
WORKDIR /TP_Entorno

# Crea una carpeta llamada "libs" dentro del directorio de trabajo
RUN mkdir libs

# Copia el script "menu.sh" y los otros cinco scripts necesarios en la carpeta "libs" dentro del directorio de trabajo
COPY menu.sh statsWords.sh statsUsageWords.sh findNames.sh statsSenteces.sh blankLinesCounter.sh /TP_Entorno/libs/

# Copia el archivo "Archivo.txt" en la carpeta "libs" dentro del directorio de trabajo
COPY Archivo.txt /TP_Entorno/libs/

# Establece permisos de ejecución en los scripts
RUN chmod +x /TP_Entorno/libs/menu.sh && chmod +x /TP_Entorno/libs/statsWords.sh && chmod +x /TP_Entorno/libs/statsUsageWords.sh && chmod +x /TP_Entorno/libs/findNames.sh && chmod +x /TP_Entorno/libs/statsSenteces.sh && chmod +x /TP_Entorno/libs/blankLinesCounter.sh

# Ejecuta el script "menu.sh" con el archivo "Archivo.txt" como argumento al iniciar el contenedor
ENTRYPOINT ["/TP_Entorno/libs/menu.sh", "/TP_Entorno/libs/Archivo.txt"]
