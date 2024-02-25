#!/bin/bash
set -ex

# Actualizamos la lista de paquetes
apt update

# Instalamos conntrack
apt install -y conntrack