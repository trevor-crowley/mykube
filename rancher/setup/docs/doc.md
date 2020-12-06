wget https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
cd $D/$VM
qemu-img create -f qcow2 -o backing_file=/var/lib/libvirt/boot/bionic-server-cloudimg-amd64.img $VM.qcow2
qemu-img info $VM.qcow2
qemu-img resize $VM.qcow2 20G
cp ../user-data .
{update hostname}
mkisofs -o $VM-cidata.iso -V cidata -J -r user-data meta-data
virsh pool-create-as --name $VM --type dir --target $D/$VM
virt-install --import --name $VM \
--memory 1024 --vcpus 1 --cpu host \
--disk $VM.qcow2,format=qcow2,bus=virtio \
--disk $VM-cidata.iso,device=cdrom \
--network bridge=br0,model=virtio \
--os-variant=rhel8.1 \
--graphics spice \
--noautoconsole
virsh change-media $VM sda --eject --config
ping $VM.home
ssh ubuntu@$VM.home
swapoff -a
