#!/bin/bash
# see https://blog.programster.org/kvm-external-snapshots
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi
DOMAIN="$1"
TIMESTAMP=`date +%s`
SNAPSHOT_NAME=$TIMESTAMP

VM_FOLDER="/nfs-root/backup"
SNAPSHOT_FOLDER="`echo $VM_FOLDER`/`echo $DOMAIN`/snapshots/`echo $TIMESTAMP`"
mkdir -p $SNAPSHOT_FOLDER

MEM_FILE="`echo $SNAPSHOT_FOLDER`/mem.qcow2"
DISK_FILE="`echo $SNAPSHOT_FOLDER`/disk.qcow2"

# Find out if running or not
STATE=`virsh dominfo $DOMAIN | grep "State" | cut -d " " -f 11`

if [ "$STATE" = "running" ]; then

  virsh snapshot-create-as \
    --domain $DOMAIN $SNAPSHOT_NAME \
    --diskspec vda,file=$DISK_FILE,snapshot=external \
    --memspec file=$MEM_FILE,snapshot=external \
    --atomic

else

  virsh snapshot-create-as \
    --domain $DOMAIN $SNAPSHOT_NAME \
    --diskspec vda,file=$DISK_FILE,snapshot=external \
    --disk-only \
    --atomic

fi
