for i in k8s-etcd1 k8s-etcd2 k8s-etcd3 k8s-controller1 k8s-controller2 k8s-worker1 k8s-worker2 k8s-worker3 k8s-lb1 k8s-lb2; do scp ca.pem kubernetes-key.pem kubernetes.pem  ubuntu@${i}:~ ; done

