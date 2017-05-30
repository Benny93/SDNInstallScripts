#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters: 1: n -> 2^n min,  2: n -> 2^n max"
    exit 1
fi
echo "$(date "+%F %T"): starting.."
#for i in {1.."$1"}
for (( i=$1; i<=$2; i++ ))
do
    mins=$((2**$i))
    secs=$(($mins*60))
    nextmins=$(($mins*2))
    sleep $secs
    echo "$i/$2: Finished waiting $mins min at $(date "+%F %T"). Next in $nextmins minutes"
done

echo "done"
