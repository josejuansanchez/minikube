#!/bin/bash
set -ex

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizamos la lista de paquetes
apt-get update

# Instalamos docker engine, docker cli y containerd
apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Iniciamos el servicio de Docker
systemctl start docker

# Configuramos el servicio de Docker para que se inicie al iniciar el sistema
systemctl enable docker

# Añadimos el usuario actual grupo de docker
#usermod -aG docker $USER
usermod -aG docker $SUDO_USER

# Cambiamos el grupo primario a docker
#newgrp docker
#sudo -u "$SUDO_USER" newgrp docker
