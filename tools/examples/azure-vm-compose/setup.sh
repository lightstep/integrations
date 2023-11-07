#!/bin/bash
apt-get update
apt-get install -y docker.io docker-compose git
usermod -aG docker azureuser

# mkdir -p /home/azureuser/integrations
git clone https://github.com/lightstep/integrations
chown -R azureuser:azureuser /home/azureuser/integrations

cat <<EOF > /etc/systemd/system/docker-compose-app.service
[Unit]
Description=Docker Compoose Application Service
Requires=docker.service
After=docker.service network.target

[Service]
Type=oneshot
RemainAfterExit=yes
WorkingDirectory=home/azureuser/integrations/collector/kong/examples/compose
ExecStart=/user/bin/docker-compose up -d
ExecStop=/user/bin/docker-compose down
TiomeoutStartSec=0

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd daemon to run our new service
systemctl daemon-reload

# Enable and start
systemctl enable docker-compose-app.service
systemctl start docker-compose-app.service

