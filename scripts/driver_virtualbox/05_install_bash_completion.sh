#!/bin/bash
set -ex

# Actualizamos la lista de paquetes
apt update

# Instalamos el paquete bash-completion
apt install bash-completion -y

# Configuramos el autocompletado de kubectl
echo 'source <(kubectl completion bash)' >>~/.bashrc

# Configuramos el autocompletado de minikube
echo 'source <(minikube completion bash)' >>~/.bashrc

source ~/.bashrc 
