#!/bin/bash
set -ex

# Instalamos Go
#apt update
#apt install golang-go -y
VERSION="1.22.0" # check latest version
wget https://go.dev/dl/go$VERSION.linux-amd64.tar.gz 
tar -xvf go1.22.0.linux-amd64.tar.gz -C /usr/local
export PATH=$PATH:/usr/local/go/bin
rm -rf go$VERSION.linux-amd64.tar.gz

# Instalamos cri-dockerd
apt update
apt install git -y
rm -rf cri-dockerd
git clone https://github.com/Mirantis/cri-dockerd.git

cd cri-dockerd
mkdir bin
go build -o bin/cri-dockerd
mkdir -p /usr/local/bin
install -o root -g root -m 0755 bin/cri-dockerd /usr/local/bin/cri-dockerd
cp -a packaging/systemd/* /etc/systemd/system
sed -i -e 's,/usr/bin/cri-dockerd,/usr/local/bin/cri-dockerd,' /etc/systemd/system/cri-docker.service
systemctl daemon-reload
systemctl enable cri-docker.service
systemctl enable --now cri-docker.socket

# Eliminamos el directorio que hemos clonado
cd ..
rm -rf cri-dockerd
