#!/bin/bash

DESTINO="/bacabian-destino"
ORIGEN="/home"
FECHA_ULTIMA=$(cat "$DESTINO/ultima_copia.txt")
NOMBRE="CopDifSem-$(date +%V).tgz"

# Crear copia diferencial desde la fecha guardada
tar -czf "$DESTINO/$NOMBRE" -N "$FECHA_ULTIMA" "$ORIGEN"

# Actualizar la fecha de última copia
date +"%Y-%m-%d" > "$DESTINO/ultima_copia.txt"

