wget https://storage.googleapis.com/kubernetes-release/release/v1.13.2/bin/linux/amd64/kube-apiserver

wget https://storage.googleapis.com/kubernetes-release/release/v1.13.2/bin/linux/amd64/kube-controller-manager

wget https://storage.googleapis.com/kubernetes-release/release/v1.13.2/bin/linux/amd64/kube-scheduler

# pull below from package mgr
wget https://storage.googleapis.com/kubernetes-release/release/v1.3.6/bin/linux/amd64/kubectl

chmod +x kube-apiserver kube-controller-manager kube-scheduler kubectl

sudo mv kube-apiserver kube-controller-manager kube-scheduler kubectl /usr/bin/
