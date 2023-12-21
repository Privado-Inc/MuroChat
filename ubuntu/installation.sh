#!/bin/bash 

mkdir ~/murochat-installation
cp -R ./ ~/murochat-installation/
cd ~/murochat-installation

install docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo apt-get install -y docker-ce=5:20.10.18~3-0~ubuntu-focal docker-ce-cli=5:20.10.18~3-0~ubuntu-focal containerd.io docker-compose-plugin
sudo service docker start
sudo docker run hello-world

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo mkdir -p /root/.docker
sudo mkdir -p /data/db

sudo docker-compose down
sudo docker-compose pull
sudo docker-compose up -d