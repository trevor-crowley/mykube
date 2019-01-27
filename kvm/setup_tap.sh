#!/bin/bash
bridge=br0
tap=$(/usr/bin/sudo /bin/tunctl -u $(/usr/bin/whoami) -b)
/usr/bin/sudo /sbin/ip link set $tap up
sleep 1s
/usr/bin/sudo /sbin/brctl addif $bridge $tap
qemu-kvm -m 512 -hda /images/sles11sp1_base.raw \
-net nic,vlan=0,model=virtio,macaddr=00:16:35:AF:94:4B \
-net tap,vlan=0,ifname=$tap,script=no,downscript=no
/usr/bin/sudo /sbin/brctl delif $bridge $tap
/usr/bin/sudo /sbin/ip link set $tap down
/usr/bin/sudo /bin/tunctl -d $tap
