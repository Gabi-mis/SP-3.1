#!/bin/bash
# Script: limpieza_diferenciales.sh
# Objetivo: eliminar todo el contenido del directorio /bacabian-destino

DESTINO="/bacabian-destino"

if [ -d "$DESTINO" ]; then
    echo "Limpiando contenido de $DESTINO..."
    rm -f "$DESTINO"/*
else
    echo "El directorio $DESTINO no existe."
fi
