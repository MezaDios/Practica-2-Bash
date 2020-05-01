#!/bin/sh

echo "Números de parametros: $#"
 
echo "Parametros pasados: $*"

# Si no se pasan parametros entonces se marca un mensaje
if [ $# = 0 ];
then
    echo "Debes pasar al menos un nombre."
else
# Si se pasaron paramentros entonces se recorren uno por uno y se les saluda
    for nombre in $*; do
        echo "Hola $nombre"
    done
fi
