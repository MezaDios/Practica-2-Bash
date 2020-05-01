#!/bin/sh

num1=-1
num2=-1
op='?'

# Ciclo necesario para que se pida al usuario los valores mientras no sean
# num1 = 0, num2 = 0, op = q
until [ $num1 = 0 -a $num2 = 0 -a $op = 'q' ]; do
    
    # Se hace la solicitud de los datos
    echo "Introduzca el primer número: "
    read num1

    echo "Introduzca el segundo número: "
    read num2

    echo "Introduzca el operador (+, -, *, /): "
    read op
        
    # Se hace la operación

    expresion="$num1$op$num2"

    if [ $num1 -lt $num2 -a $op == '-' ];then
        expresion="$num2$op$num1"
    fi

    if [ $op = 'q' ];then
        echo "Presiona ENTER para continuar";
        read asd
        clear
        continue
    fi

    echo "El valor es $((expresion))"

    echo "Presiona ENTER para continuar";
    read asd
    clear

done

echo "Finalizado correctamente."
