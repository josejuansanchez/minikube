#!/bin/bash
set -ex

# Actualizamos la lista de paquetes
apt update

# Instalamos el paquete bash-completion
apt install bash-completion -y