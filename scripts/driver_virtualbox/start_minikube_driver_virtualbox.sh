#!/bin/bash
set -ex

# Iniciamos minikube con el driver virtualbox
minikube start --driver virtualbox

# Habilitamos el addon de ingress
minikube addons enable ingress
