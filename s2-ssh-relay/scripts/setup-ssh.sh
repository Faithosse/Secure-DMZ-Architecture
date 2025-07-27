#!/bin/bash
# Install OpenSSH server and create users
sudo apt update
sudo apt install -y openssh-server
sudo adduser --gecos "" edge
sudo adduser --gecos "" server
sudo mkdir -p /home/edge/.ssh
sudo mkdir -p /home/server/.ssh
sudo chmod 700 /home/edge/.ssh
sudo chmod 700 /home/server/.ssh
sudo chown edge:edge /home/edge/.ssh
sudo chown server:server /home/server/.ssh
