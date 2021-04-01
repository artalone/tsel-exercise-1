#!/bin/bash

mkdir purwadika
mkdir -p /tmp/zouls99/backup_log
cd purwadika/
last -x | grep shutdown | less | tail -n3 > systemlog.txt
tar -czvf backuplog_20210401 systemlog.txt
ln backuplog_20210401.tar.gz /tmp/zouls99/backup_log
echo "Script Success"
