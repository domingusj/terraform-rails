#!/bin/bash -xe

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins && sudo service jenkins restart
sudo apt-get install -y git ruby python-pip
wget -qO- https://get.docker.com/ | sh
sudo pip install docker-compose
sudo usermod -a -G docker jenkins
echo "Done provisioning Jenkins"
