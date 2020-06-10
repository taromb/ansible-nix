## DETECTING VMX FILE ###
cat vars.yaml | shyaml get-value ontap_drvolumes| awk '{print $2}' > vol_dest.list
ontap_drhostname=`cat vars.yaml | shyaml get-value ontap_drhostname`
ontap_drusername=`cat vars.yaml | shyaml get-value ontap_drusername`

FILEIN=vol_dest.list
LOOPS=`wc -l $FILEIN |awk '{print $1}'`
echo $LOOPS
COUNT=1

## LOOP TO REGISTER VMX ON ALL DEVICE ###
while [ $COUNT -le $LOOPS ]
do
VOL_DEST=`head -$COUNT $FILEIN |tail -1|awk '{print $1}'`
ssh $ontap_drusername@$ontap_drhostname "snapmirror update" $VOL_DEST
sleep 3
(( COUNT++ ))
done

