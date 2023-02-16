#!/bin/bash
lineas=`cat ./consumo.txt | wc -l`
for i in `seq 2 $lineas`
do
nombre=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $1}'`
./cmedia.sh $nombre > kk.txt
done