cat > kubernetes-csr.json <<EOF
{
  "CN": "*.tmc.io",
  "hosts": [
    "10.32.0.1",
    "k8s-etcd1",
    "k8s-etcd2",
    "k8s-etcd3",
    "k8s-etcd1.tmc.io",
    "k8s-etcd2.tmc.io",
    "k8s-etcd3.tmc.io",
    "192.168.2.11",
    "192.168.2.12",
    "192.168.2.13",
    "k8s-controller1",
    "k8s-controller2",
    "k8s-controller1.tmc.io",
    "k8s-controller2.tmc.io",
    "192.168.2.21",
    "192.168.2.22",
    "k8s-worker1",
    "k8s-worker2",
    "k8s-worker3",
    "k8s-worker4",
    "k8s-worker1.tmc.io",
    "k8s-worker2.tmc.io",
    "k8s-worker3.tmc.io",
    "k8s-worker4.tmc.io",
    "192.168.2.31",
    "192.168.2.32",
    "192.168.2.33",
    "192.168.2.34",
    "k8s-controller.tmc.io",
    "k8s-tmc.io",
    "${KUBERNETES_PUBLIC_IP_ADDRESS}",
    "localhost",
    "127.0.0.1"
  ],
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "NO",
      "L": "Oslo",
      "O": "Kubernetes",
      "OU": "Cluster",
      "ST": "Oslo"
    }
  ]
}
EOF
