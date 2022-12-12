#!/bin/bash
source common.sh
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
curl -s -L https://nvidia.github.io/libnvidia-container/experimental/$distribution/libnvidia-container.list |
sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' |
sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list


sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
docker build -f Dockerfile --build-arg "WORKSPACE_DIR=${WORKSPACE_DIR}" -t "${CONTAINER_NAME}" .