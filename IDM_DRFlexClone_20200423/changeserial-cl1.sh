ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_archive01/R910A_MP_ctrlfile
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_datafile1/R910A_MP_datafile1
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_datafile2/R910A_MP_datafile2
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_datafile3/R910A_MP_datafile3
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_datafile4/R910A_MP_datafile4
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_index/R910A_MP_index
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_archive01/R910A_MP_logfile
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_archive01/R910A_MP_archive01
ssh clone@192.168.72.246 lun offline /vol/cl1cg_R910A_MP_undo/R910A_MP_undo
sleep 5

ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_archive01/R910A_MP_ctrlfile D3FQH]EMDDv/
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_datafile1/R910A_MP_datafile1 D3FQH]EMDDvY
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_datafile2/R910A_MP_datafile2 D3FQH]EMDDvX
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_datafile3/R910A_MP_datafile3 D3FQH]EMDDvL
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_datafile4/R910A_MP_datafile4 D3FQH]EMDDvN
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_index/R910A_MP_index D3FQH]EMDDvZ
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_archive01/R910A_MP_logfile D3FQH]EMDDva
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_archive01/R910A_MP_archive01 D3FQH]EMDDvc
ssh clone@192.168.72.246 lun serial /vol/cl1cg_R910A_MP_undo/R910A_MP_undo D3FQH]EMDDvb
sleep 5

ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_archive01/R910A_MP_ctrlfile
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_datafile1/R910A_MP_datafile1
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_datafile2/R910A_MP_datafile2
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_datafile3/R910A_MP_datafile3
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_datafile4/R910A_MP_datafile4
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_index/R910A_MP_index
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_archive01/R910A_MP_logfile
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_archive01/R910A_MP_archive01
ssh clone@192.168.72.246 lun online /vol/cl1cg_R910A_MP_undo/R910A_MP_undo
