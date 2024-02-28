#!/bin/bash
set -ex

./00_install_docker.sh
./01_install_minikube.sh
./02_install_conntrack.sh
./03_install_crictl.sh
./04_install_cri-dockerd.sh
./05_install_containernetworking-plugins.sh
./06_install_socat.sh
./07_install_helm.sh
./08_install_kubectl.sh
./09_install_bash_completion.sh