#mount FS
ssh root@192.168.72.66 mount /dev/mapper/mpath2 /ctlfile
ssh root@192.168.72.66 mount /dev/mapper/mpath3 /datafile
ssh root@192.168.72.66 mount /dev/mapper/mpath4 /index01
ssh root@192.168.72.66 mount /dev/mapper/mpath5 /logfile
ssh root@192.168.72.66 mount /dev/mapper/mpath6 /undo
ssh root@192.168.72.66 mount /dev/mapper/mpath7 /datafile02
ssh root@192.168.72.66 mount /dev/mapper/mpath8 /archive01
ssh root@192.168.72.66 mount /dev/mapper/mpath14 /datafile03
ssh root@192.168.72.66 mount /dev/mapper/mpath15 /datafile04

#start DB
ssh root@192.168.72.66 /u01/script/oraclestart.sh
