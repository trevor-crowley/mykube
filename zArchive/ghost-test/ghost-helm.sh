
helm install --name my-release \
  --set ghostUsername=admin,ghostPassword=admin,mariadb.mariadbRootPassword=secretpassword,ghostHost=luigilinux,persistence.storageClass=rook-ceph-block,persistence.size=2Gi \
    stable/ghost

