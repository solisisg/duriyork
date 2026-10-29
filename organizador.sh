#!/bin/bash
# organizador.sh
# Clasifica archivos de un .zip por extensión y audita los .py buscando PySide6
# Uso: ./organizador.sh <archivo.zip> <directorio_destino>

# --- Validación: deben ser exactamente 2 argumentos ---
# $# es el número de argumentos recibidos
if [ "$#" -ne 2 ]; then
    echo "Uso: ./script.sh <archivo.zip> <directorio_destino>"
    exit 1
fi

# Guardamos los argumentos en variables con nombres claros
ZIP="$1"
DESTINO="$2"

# --- Validación: el .zip debe existir ---
# -f verifica que sea un archivo regular que existe
if [ ! -f "$ZIP" ]; then
    echo "Error: el archivo '$ZIP' no existe."
    exit 1
fi

echo "Parámetros OK -> zip: $ZIP | destino: $DESTINO"
