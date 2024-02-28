#!/bin/bash
set -ex

./00_install_docker.sh
./01_install_minikube.sh
./02_install_socat.sh
./03_install_helm.sh
./04_install_kubectl.sh
./05_install_bash_completion.sh