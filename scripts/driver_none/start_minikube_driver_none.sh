#!/bin/bash
set -ex

# Iniciamos minikube con el driver none, cni para la gestión de redes y calico  como complemento de cni
minikube start --driver none --network-plugin cni --cni calico

# Habilitamos el addon de ingress
minikube addons enable ingress
