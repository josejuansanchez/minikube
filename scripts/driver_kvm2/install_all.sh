#!/bin/bash
set -ex

./00_install_docker.sh
./01_install_kvm.sh
./02_install_minikube.sh
./03_install_socat.sh
./04_install_helm.sh
./05_install_kubectl.sh
./06_install_bash_completion.sh