#mount FS
ssh root@192.168.72.57 mount /dev/mapper/mpath3 /ctlfile
ssh root@192.168.72.57 mount /dev/mapper/mpath2 /datafile
ssh root@192.168.72.57 mount /dev/mapper/mpath7 /datafile02
ssh root@192.168.72.57 mount /dev/mapper/mpath4 /index01
ssh root@192.168.72.57 mount /dev/mapper/mpath5 /logfile
ssh root@192.168.72.57 mount /dev/mapper/mpath6 /undo
ssh root@192.168.72.57 mount /dev/mapper/mpath8 /archive01
ssh root@192.168.72.57 mount /dev/mapper/mpath9 /datafile03
ssh root@192.168.72.57 mount /dev/mapper/mpath10 /datafile04

#start DB
ssh root@192.168.72.57 /u01/script/oraclestart.sh
