#!/bin/bash

read -p "De que ciudad quieres calcular el consumo: " cuidad

lineas=`cat ./consumo.txt | wc -l`
valor=0
for i in `seq 2 $lineas`
do
nombre=`cat ./consumo.txt | head -n$i | tail -n1 |awk '{print $1}'`
valor=$((valor+1))
if [ $cuidad == $nombre ];
then
consumo=`cat ./consumo.txt | head -n$i | tail -n1 |awk '{print $4}'`
valor=$((valor+consumo))
fi
done

echo "El total del consumo de $cuidad es $valor"

sleep 5