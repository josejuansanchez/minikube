#!/bin/bash
set -ex

# Instalamos kvm
apt update
apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

# Añadimos nuestro usuairo a los grupos libvirtd y kvm
#adduser `id -un` libvirt
adduser $SUDO_USER libvirt

#adduser `id -un` kvm
adduser $SUDO_USER kvm
