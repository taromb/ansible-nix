#!/bin/bash
export ANSIBLE_LOG_PATH=log/delete-`date +%Y%m%d%H%M%S`.log

cd /netapp
ansible-playbook delete_cgsnap.yaml
