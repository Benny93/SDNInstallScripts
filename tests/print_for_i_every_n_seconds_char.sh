#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters: 1: iterations, 2: sleeptime"
    exit 1
fi

#for i in {1.."$1"}
for (( i=1; i<=$1; i++ ))
do
    echo "$i,$1"
    sleep $2
done

echo "done"
