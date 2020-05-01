#!/bin/sh

usuario='null'

# Ciclo necesario para que se pida el usuario mientra no sea 'fin'
while [ "$usuario" != 'fin' ]; do
    
    echo "Introduzca un usuario (introduzca fin sin quiere finalizar el programa):"
    
    # Se hace que se ingrese un nombre de usuario
    read usuario

    # Se busca si esta presente en /etc/passwd con el uso de grep
    if grep $usuario /etc/passwd; then

        echo "El usuario $usuario si existe"

    else

        echo "El usuario $usuario no existe"

    fi

done


