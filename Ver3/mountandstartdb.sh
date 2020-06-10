#mount FS
ssh root@192.168.72.13 mount /dev/mapper/mpath33 /ctlfile
ssh root@192.168.72.13 mount /dev/mapper/mpath32 /datafile
ssh root@192.168.72.13 mount /dev/mapper/mpath34 /index01
ssh root@192.168.72.13 mount /dev/mapper/mpath35 /logfile
ssh root@192.168.72.13 mount /dev/mapper/mpath36 /undo
ssh root@192.168.72.13 mount /dev/mapper/mpath37 /datafile02
ssh root@192.168.72.13 mount /dev/mapper/mpath38 /archive01
ssh root@192.168.72.13 mount /dev/mapper/mpath39 /datafile03
ssh root@192.168.72.13 mount /dev/mapper/mpath40 /datafile04

#start DB
ssh root@192.168.72.13 /u01/script/oraclestart.sh
