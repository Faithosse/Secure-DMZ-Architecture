#!/bin/bash
# Install OpenSSH server and create admin user
sudo apt update
sudo apt install -y openssh-server
sudo adduser --gecos "" admin
sudo mkdir -p /home/admin/.ssh
sudo chmod 700 /home/admin/.ssh
sudo chown admin:admin /home/admin/.ssh
