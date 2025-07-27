#!/bin/bash
# Configure firewall to allow SSH from S1 and S3
sudo ufw allow from 192.168.1.20 to any port 22
sudo ufw allow from 192.168.1.40 to any port 22
sudo ufw enable
