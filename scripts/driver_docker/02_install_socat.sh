#!/bin/bash
set -ex

# Actualizamos la lista de paquetes
apt update

# Instalamos el paquete socat, necesario para hacer port forwarding
apt install socat -y