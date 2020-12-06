helm install rancher rancher-latest/rancher \
  --namespace cattle-system \
  --set hostname=tcrow.io \
  --set ingress.tls.source=secret \
  --set no-cacerts=true
