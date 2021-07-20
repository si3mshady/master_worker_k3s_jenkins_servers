#!/bin/bash 
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install -y jenkins 
sudo yum -y install java-1.8.0-openjdk
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo yum upgrade -y


# https://github.com/si3mshady/DevOps-Demos/tree/master/setup-jenkins-slave