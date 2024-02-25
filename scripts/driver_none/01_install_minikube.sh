#!/bin/bash
set -x

# Descargamos el binario de minikube del sitio oficial
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

# Instalamos minikube
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Eliminamos el archivo minikube-linux-amd64
rm minikube-linux-amd64
