#mount FS
ssh root@192.168.72.14  mount /dev/mapper/mpath35 /ctlfile
ssh root@192.168.72.14  mount /dev/mapper/mpath36 /datafile
ssh root@192.168.72.14  mount /dev/mapper/mpath34 /index01
ssh root@192.168.72.14  mount /dev/mapper/mpath33 /logfile
ssh root@192.168.72.14  mount /dev/mapper/mpath37 /undo
ssh root@192.168.72.14  mount /dev/mapper/mpath38 /datafile02
ssh root@192.168.72.14  mount /dev/mapper/mpath39 /archive01
ssh root@192.168.72.14  mount /dev/mapper/mpath40 /datafile03
ssh root@192.168.72.14  mount /dev/mapper/mpath41 /datafile04

#start DB
ssh root@192.168.72.14 /u01/script/oraclestart.sh
