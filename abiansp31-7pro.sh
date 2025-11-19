#!/bin/bash

# Archivo con la lista de programas
LISTA="programas.txt"

# Verificar que el archivo existe
if [ ! -f "$LISTA" ]; then
    echo "No se encontró el archivo $LISTA en el directorio actual."
    exit 1
fi

# Recorrer cada línea del archivo y eliminar el programa
while IFS= read -r programa; do
    if [ -n "$programa" ]; then
        echo "Eliminando programa: $programa"
        sudo apt-get remove -y "$programa"
    fi
done < "$LISTA"
