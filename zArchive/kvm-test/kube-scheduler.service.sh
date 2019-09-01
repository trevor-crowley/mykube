cat > kube-scheduler.service <<"EOF"
[Unit]
Description=Kubernetes Scheduler
Documentation=https://github.com/GoogleCloudPlatform/kubernetes

[Service]
ExecStart=/usr/bin/kube-scheduler \
  --leader-elect=true \
  --master=http://INTERNAL_IP:8080 \
  --v=2
Restart=on-failure
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

export INTERNAL_IP='192.168.2.21'

sed -i s/INTERNAL_IP/$INTERNAL_IP/g kube-scheduler.service
sudo mv kube-scheduler.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable kube-scheduler
sudo systemctl start kube-scheduler

sudo systemctl status kube-scheduler --no-pager
