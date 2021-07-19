#!/bin/bash 
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install -y jenkins java-11-openjdk-devel 
sudo systemctl daemon-reload
sudo yum upgrade -y


