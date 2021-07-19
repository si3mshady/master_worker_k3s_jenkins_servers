#!/bin/bash 
useradd jenkins-worker
sudo su - jenkins-worker
ssh-keygen -t rsa -f /home/jenkins-worker/.ssh/id_rsa
cd .ssh
cat id_rsa.pub > authorized_keys
chmod 700 authorized_keys

#install k3s
sudo curl -sfL https://get.k3s.io | sh -
