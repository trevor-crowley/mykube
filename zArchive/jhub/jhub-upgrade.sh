# Suggested values: advanced users of Kubernetes and Helm should feel
# free to use different values.
RELEASE=jhub

helm upgrade $RELEASE jupyterhub/jupyterhub \
  --version=0.9-fe7b5df \
  --values config.yaml

