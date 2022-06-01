#!/bin/bash

START=$1
END=$2
IDX=$3
FSNAME=$4

for x in $(eval echo "{$START..$END}"); do
     mkdir -p /mnt/ost$IDX
     mount -t lustre /dev/sd$x /mnt/ost$IDX
done
