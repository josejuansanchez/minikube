#!/bin/bash
set -ex

./00_install_docker.sh
./01_install_minikube.sh
./02_install_helm.sh
./03_install_kubectl.sh
./04_install_bash_completion.sh
