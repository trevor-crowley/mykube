#!/bin/bash
# backup VM, NFS, DBs

#rpm -qa > packages

if mountpoint -q /mnt/backup
then
	echo "Backup err:  already mounted!"
else
	echo "Backup Start: " $(date)

	mount -t cifs -v //luigibase/Data /mnt/backup/ \
		-o credentials=/home/trevor/.smbcredentials,rw,hard,nosetuids,noperm,vers=1.0,sec=ntlm

	if mountpoint -q /mnt/backup
	then
		echo "Backing up Postgres DB..."
		sudo sh -c 'pg_dump bitnami_redmine -U postgres > /nfs-root/backup/postgres/bitnami_redmine.sql'
		echo "Backing up MySQL DB..."
		sudo sh -c 'mysqldump \
		--defaults-extra-file=/home/trevor/.mylogin.cnf \
		--single-transaction --quick --lock-tables=false \
		bitnami_mediawiki \
		> /nfs-root/backup/mysql/bitnami_mediawiki.sql'

		echo "Backing up VMs..."
		sudo sh -c '/usr/local/bin/vmss.sh k8s-c1'
		sudo sh -c '/usr/local/bin/vmss.sh rsn1'

		echo "Backing up NFS..."
		time rsync -av --delete /nfs-root/ /mnt/backup/nfs-root/

		umount /mnt/backup
		echo "Backup done: " $(date)
	else
		echo "Backup err:  failed to mount drive"
	fi
fi

