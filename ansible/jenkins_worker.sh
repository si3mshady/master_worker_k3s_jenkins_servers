#!/bin/bash 
useradd jenkins-worker
sudo su - jenkins-worker
ssh-keygen -t rsa -f /home/jenkins-worker/.ssh/id_rsa
cd .ssh
cat id_rsa.pub > authorized_keys
chmod 700 authorized_keys

#install k3s
sudo curl -sfL https://get.k3s.io | sh -


#install git 
sudo apt install  -y  git

#install docker 
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
