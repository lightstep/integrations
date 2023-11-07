#!/bin/bash
apt-get update
apt-get install -y docker.io docker-compose git
usermod -aG docker azureuser
cd /home/azureuser
git clone https://github.com/lightstep/integrations
cd integrations/kong
docker-compose up -d

