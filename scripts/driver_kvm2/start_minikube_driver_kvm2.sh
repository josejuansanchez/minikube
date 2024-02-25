#!/bin/bash
set -ex

# Iniciamos minikube con el driver kvm2
minikube start --driver kvm2

# Habilitamos el addon de ingress
minikube addons enable ingress
