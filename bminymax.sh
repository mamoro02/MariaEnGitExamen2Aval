#!/bin/bash

lineas=`cat ./consumo.txt | wc -l`

min=10000
max=0
consumoMax=0
consumoMin=0

for i in `seq 2 $lineas`
do
consumo=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $4}'`

if [ $consumo -gt $max ]
then
max=$consumo
consumoMax=$i
fi
if [ $consumo -lt $min ]
then
min=$consumo
consumoMin=$i
fi
done
echo `cat ./consumo.txt | head -n$consumoMax| tail -n1`
echo `cat ./consumo.txt | head -n$consumoMin| tail -n1`
