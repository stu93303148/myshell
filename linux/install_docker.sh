#!/bin/bash

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum makecache fast
sudo yum -y install docker-ce
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker

