#!/bin/bash
#
# Setup Debian flavor (apt) instance to run examples in containers
# currently supported toolchain - docker, docker-compose, k8s, helm, kind 

function install_kind() {
  snap install go --classic
  go install sigs.k8s.io/kind@v0.20.0
}

function setup_tools() {
  apt-get update
  apt-get install -y make
  # docker
  apt-get install -y docker.io docker-compose git
  usermod -aG docker azureuser
  # kubectl
  apt-get install -y apt-transport-https ca-certificates curl software-properties-common kubectl
  # kind
  install_kind
}

function setup_code() {
  mkdir -p /home/azureuser/integrations
  cd /home/azureuser/integrations || exit
  git clone https://github.com/lightstep/integrations .
  chown -R azureuser:azureuser /home/azureuser/integrations
}

function set_environment() {
  # Set environment variables for docker-compose to persist across reboots
  # single quotes aren't expanded, so the string is written literally
  # shellcheck disable=SC2016
  echo 'export LS_ACCESS_TOKEN=${LS_ACCESS_TOKEN}' >> /etc/profile.d/lightstep.sh
}

function make_compose_app_service() {
cat <<EOF > /etc/systemd/system/docker-compose-app.service
[Unit]
Description=Docker Compoose Application Service
Requires=docker.service
After=docker.service network.target

[Service]
Type=oneshot
RemainAfterExit=yes
WorkingDirectory=/home/azureuser/integrations/collector/kong/examples/compose
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
TimeoutStartSec=0

[Install]
WantedBy=multi-user.target
EOF
}

function start_service() {
  # Reload systemd daemon to run our new service
  systemctl daemon-reload

  # Enable and start
  systemctl enable docker-compose-app.service
  systemctl start docker-compose-app.service
}

function checkout_if_exists() {
  local branch=$1

  # check if branch exists locally
  if git rev-parse --verify $branch >/dev/null 2>&1; then
    echo "Switching to branch '$branch'."
    git checkout $branch
  elif git fetch origin $branch && git rev-parse --verify origin/$branch >/dev/null 2>&1; then
    echo "Branch '$branch' found in remote. Checking out and tracking."
    git checkout -t origin/$branch
  else
    echo "Branch '$branch' does not exist."
  fi
}

function load_profile() {
  echo 'export PATH=$HOME/go/bin:$PATH' >> $HOME/.profile
  source $HOME/.profile
}

function main() {
  setup_tools

  setup_code
  # checkout_if_exists njs/add-kong-compose-eg

  make_compose_app_service
  set_environment
  start_app_service

  load_profile
}

main "$@"
