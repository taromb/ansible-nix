#!/bin/bash

## RESCAN DEVICE ##
ssh root@192.168.0.103 "esxcfg-rescan vmhba65"

## DETECTING VMFS UUID TO RESIGNATURE ###
ssh root@192.168.0.103 "esxcli storage vmfs snapshot list | grep VMFS" > vmfsuuid.list


FILEIN=vmfsuuid.list
LOOPS=`wc -l $FILEIN |awk '{print $1}'`
echo $LOOPS
COUNT=1

## LOOP TO RESIGNATURE ALL DEVICE###
while [ $COUNT -le $LOOPS ]
do
VMFS_UUID=`head -$COUNT $FILEIN |tail -1|awk '{print $3}'`
ssh root@192.168.0.103 "esxcli storage vmfs snapshot resignature -u" $VMFS_UUID
(( COUNT++ ))
done

# Cleanup File
rm vmfsuuid.list

## RESCAN DEVICE ##
ssh root@192.168.0.103 "esxcfg-rescan vmhba65"