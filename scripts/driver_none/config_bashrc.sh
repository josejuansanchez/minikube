#!/bin/bash
set -ex

# Configuramos el autocompletado de kubectl
echo 'source <(kubectl completion bash)' >> ~/.bashrc

# Configuramos el autocompletado de minikube
echo 'source <(minikube completion bash)' >> ~/.bashrc

source ~/.bashrc