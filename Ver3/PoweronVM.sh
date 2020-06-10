#!/bin/bash

## DETECTING VM ID ###
ssh root@192.168.0.103 "vim-cmd vmsvc/getallvms | grep snap" > getallvms.list
FILEIN=getallvms.list
LOOPS=`wc -l $FILEIN |awk '{print $1}'`
echo $LOOPS
COUNT=1

## LOOP TO POWER ON VM ###
while [ $COUNT -le $LOOPS ]
do
VM_ID=`head -$COUNT $FILEIN |tail -1|awk '{print $1}'`
ssh root@192.168.0.103 "vim-cmd vmsvc/power.on" $VM_ID
(( COUNT++ ))
done

## CLEAN DATA FILE ##
rm getallvms.list