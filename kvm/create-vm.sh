#!/bin/sh

if [ -z "$1" ] ;
then
	 echo Specify a virtual-machine name.
	  exit 1
  fi

  sudo virt-install \
	  --name $1 \
	  --ram 512 \
	  --disk path=/opt/libvirt/images/$1.img,size=4 \
	  --vcpus 2 \
	  --os-type linux \
	  --os-variant ubuntu16.04 \
	  --network bridge:br0,model=virtio
	  --graphics none \
	  --console pty,target_type=serial \
	  --location 'http://gb.archive.ubuntu.com/ubuntu/dists/xenial/main/installer-amd64/' \
	  --extra-args 'console=ttyS0,115200n8 serial'

