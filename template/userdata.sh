#!/bin/bash
sudo apt update && sudo apt upgrade -y

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg-agent nfs-common

# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -a -G docker ubuntu

# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /tmp/docker-compose
chmod +x /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sleep 4m 

mkdir -p /var/www/html
sudo echo "${efs_id}:/ /var/www/html/ nfs4 nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport,_netdev 0 0" >> /etc/fstab
sudo mount -a

echo "${dockercompose}" > /home/ubuntu/docker-compose.yml
sleep 1m
#export DOCKER_BUILDKIT=1
#export COMPOSE_DOCKER_CLI_BUILD=1
cd /home/ubuntu
sudo docker-compose up -d 