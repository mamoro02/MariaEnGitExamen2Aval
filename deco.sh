#!/bin/bash
lineas=`cat ./consumo.txt | wc -l`

sum=0
j=0
eco=400
for i in `seq 2 $lineas`
do
ciudad=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $1}'`
if [ $1 == $ciudad ];
    then
        consumo=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $4}'`
        sum=$((sum+consumo))
        j=$((j+1))
    fi
done

resultado=$((sum/j))

if [ $resultado -ge $eco ]
then
echo "$1 es una ciudad NO ECO"
else
echo "$1 es una ciudad ECO"
fi