docker run -d --restart=unless-stopped  \
      -p 8443:443  \
      -v /var/log/rancher/auditlog:/var/log/auditlog \
      -v /host/rancher:/var/lib/rancher \
      -v /etc/ssl/certs/domain.cert.pem:/etc/rancher/ssl/cert.pem \
      -v /etc/ssl/certs/private.key.pem:/etc/rancher/ssl/key.pem \
      -e AUDIT_LEVEL=1 \
      rancher/rancher:v2.3.3 \
      --no-cacerts
