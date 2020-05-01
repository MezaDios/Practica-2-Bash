#!/bin/sh

#Guardado del valor de la variable PATH
temp=$PATH

echo "Variable PATH antes de ser modificada -> $PATH"

echo "Números de parametros: $#"
 
echo "Parametros pasados: $*"

# Si no se pasan parametros se marca un mensaje
if [ $# = 0 ];
then
    echo "Debes pasar al menos un directorio."
else
# Si se pasaron parametros entonces se recorren y se agregan al PATH agregandole : antes de otro directorio
    for directorio in $*; do
        PATH="$PATH:$directorio"
    done
fi

echo "Variable PATH modificada -> $PATH"

# Se regresa el valor original a la variable PATH
PATH=$temp

echo "Variable PATH después de ser regresada a su vaor inicial -> $PATH"

