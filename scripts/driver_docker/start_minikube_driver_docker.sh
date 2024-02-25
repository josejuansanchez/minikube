#!/bin/bash
set -ex

# Iniciamos minikube con el driver docker
minikube start --driver docker

# Habilitamos el addon de ingress
minikube addons enable ingress
