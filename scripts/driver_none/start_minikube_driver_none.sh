#!/bin/bash
set -ex

# Iniciamos minikube con el driver none, cni para la gestión de redes y el plugin calico
#minikube start --driver none --network-plugin cni --cni calico

# Otra opción podría utilizar el plugin de flannel
minikube start --driver none --network-plugin cni --cni flannel

# Habilitamos el addon de ingress
minikube addons enable ingress
