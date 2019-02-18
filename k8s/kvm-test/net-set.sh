iface ens2 inet static
        address 192.168.2.11
        netmask 255.255.255.0
        gateway 192.168.2.1

        dns-nameservers 192.168.2.1
        dns-domain tmc.io
        dns-search tmc.io


192.168.2.11 k8s-etcd1.tmc.io k8s-etcd1


etcd1       10.240.0.11/24  52:54:00:1e:7a:15 77 y
etcd2       10.240.0.12/24  52:54:00:6a:1d:3c 24 x
etcd3       10.240.0.13/24  52:54:00:20:cf:fd 78 y
controller1 10.240.0.21/24  52:54:00:a3:63:39 11 y
controller2 10.240.0.22/24  52:54:00:31:94:2d 76 y

worker1     10.240.0.31/24  52:54:00:91:d3:9e 82 y
worker2     10.240.0.32/24  52:54:00:c1:d6:e3 83 y
worker3     10.240.0.33/24  52:54:00:08:e1:c4 84 y

lb1         10.240.0.41/24  52:54:00:52:ec:9d 80 y
lb2         10.240.0.42/24  52:54:00:bb:76:5d 81 y


192.168.2.11    k8s-etcd1.tmc.io       k8s-etcd1
192.168.2.12    k8s-etcd2.tmc.io       k8s-etcd2
192.168.2.13    k8s-etcd3.tmc.io       k8s-etcd3
192.168.2.21    k8s-controller1.tmc.io k8s-controller1
192.168.2.22    k8s-controller2.tmc.io k8s-controller2
192.168.2.31    k8s-worker1.tmc.io     k8s-worker1
192.168.2.32    k8s-worker2.tmc.io     k8s-worker2
192.168.2.33    k8s-worker3.tmc.io     k8s-worker3
192.168.2.41    k8s-lb1.tmc.io         k8s-lb1
192.168.2.42    k8s-lb2.tmc.io         k8s-lb2

