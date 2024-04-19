#!/bin/bash

total=0
for n in ./*.sh
do
    ti=`grep while ${n} | wc -1`
    ti=$(($ti + 0))
    if [[ $ti -gt 0 ]]
    then
        total=$(($total+$ti))
    fi
done
echo "Total:" $total
