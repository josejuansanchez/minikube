#!/bin/bash
set -ex

# Actualizamos la lista de paquetes
apt update

# Instalamos el paquete bash-completion
apt install bash-completion -y

# Configuramos el autocompletado de kubectl
echo 'source <(kubectl completion bash)' >> /home/$SUDO_USER/.bashrc

# Configuramos el autocompletado de minikube
echo 'source <(minikube completion bash)' >> /home/$SUDO_USER/.bashrc

source /home/$SUDO_USER/.bashrc 