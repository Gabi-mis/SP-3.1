#!/bin/bash

# Directorio destino de la copia
DESTINO="/bacabian-destino"

# Nombre del archivo con mes y año en español
NOMBRE_ARCHIVO="CopTot-$(date +%B-%Y).tgz"

# Crear el respaldo en el destino
tar -czf "$DESTINO/$NOMBRE_ARCHIVO" /home


