#!/bin/bash 

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key \
 | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#install jenkins 
sudo apt update
sudo apt install -y openjdk-8-jdk
sudo apt install -y jenkins
sudo systemctl start jenkins

#install npm/nodejs Nodesource
# https://linuxize.com/post/how-to-install-node-js-on-ubuntu-20-04/
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
#install git 
sudo apt install  -y  git

#install snyk - vuln scanner 
sudo npm install -y snyk

#install docker 
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo systemctl status docker


#terraform 
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install -y terraform

# https://github.com/si3mshady/DevOps-Demos/tree/master/setup-jenkins-slave