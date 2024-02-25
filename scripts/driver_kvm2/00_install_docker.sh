#!/bin/bash
set -x

# Actualizamos la lista de paquetes
apt-get update

# Actualizamos algunos paquetes necesarios
apt-get install -y ca-certificates curl gnupg lsb-release

# Añadimos la clave GPG oficial de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Añadimos el repositorio oficial de Docker
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizamos la lista de paquetes
apt-get update

# Instalamos docker engine, docker cli y containerd
apt-get install -y docker-ce docker-ce-cli containerd.io

# Iniciamos el servicio de Docker
systemctl start docker

# Configuramos el servicio de Docker para que se inicie al iniciar el sistema
systemctl enable docker

# Añadimos el usuario actual grupo de docker
#usermod -aG docker $USER
usermod -aG docker $SUDO_USER

# Cambiamos el grupo primario a docker
#newgrp docker
sudo -u "$SUDO_USER" newgrp docker
