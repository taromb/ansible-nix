#!/bin/bash
export ANSIBLE_LOG_PATH=log/create-`date +%Y%m%d%H%M%S`.log
cd /netapp
ansible-playbook create_cgsnap.yaml 
