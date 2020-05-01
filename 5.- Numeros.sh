nums=`cat $*`
total_num=0
suma=0
min=9999999
max=-9999999
promedio=0

for num in $nums; do
    total_num=$((total_num + 1))

    suma=$((suma + num))

    if [ $num -lt $min ];then
        min=$num
    fi

    if [ $num -gt $max ];then
        max=$num
    fi
done

promedio=$((suma / total_num))

echo "Lista de numeros $nums"
echo "Máximo: $max"
echo "Mínimo: $min"
echo "Promedio: $promedio"
