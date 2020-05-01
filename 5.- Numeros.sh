#!/bin/sh

nums=`cat $*`
total_num=0
suma=0
min=9999999
max=-9999999
promedio=0
sumad=0
xd=""
desv=0
# Se iteran todos los números
for num in $nums; do

    # Cada iteración se aumenta el numero total de números
    total_num=$((total_num + 1))

    # Cada iteración se suman los numeros
    suma=$((suma + num))

    # Si el numero es menor que el minimo entonces se reemplaza
    if [ $num -lt $min ];then
        min=$num
    fi

    # Si el numero es mayor que el maximo entonces se reemplaza
    if [ $num -gt $max ];then
        max=$num
    fi
done

for num in $nums; do
    xd=$((num - promedio))
    xd=$((xd * xd))
    sumad=$((sumad + xd))
done

desv=$((sumad / total_num))
desv=$(echo "sqrt($desv)" | bc)

promedio=$((suma / total_num))

echo "Lista de numeros $nums"
echo "Máximo: $max"
echo "Mínimo: $min"
echo "Promedio: $promedio"
echo "Desviación estándar: $desv"
