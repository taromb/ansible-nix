#!/bin/bash

## DETECTING VMX FILE ###
ssh root@esx1 "ls /vmfs/volumes/snap*/*/*.vmx" > vmxfile.list


FILEIN=vmxfile.list
LOOPS=`wc -l $FILEIN |awk '{print $1}'`
echo $LOOPS
COUNT=1

## LOOP TO REGISTER VMX ON ALL DEVICE###
while [ $COUNT -le $LOOPS ]
do
VMX_FILE=`head -$COUNT $FILEIN |tail -1|awk '{print $1}'`
ssh root@esx1 "vim-cmd solo/registervm " $VMX_FILE
(( COUNT++ ))
done

rm vmxfile.list