#!/bin/bash
# Install StrongSwan and set up VPN on S1 and S4
sudo apt update
sudo apt install -y strongswan strongswan-pki libcharon-extra-plugins libcharon-extraauth-plugins libstrongswan-extra-plugins libtss2-tcti-tpm2-dev
sudo mkdir -p /root/pki/private /root/pki/cacerts
sudo pki --gen --type rsa --size 2048 --outform pem > /root/pki/private/s1_key.pem
sudo pki --gen --type rsa --size 2048 --outform pem > /root/pki/private/s4_key.pem
sudo pki --gen --type rsa --size 4096 --outform pem > /root/pki/private/ca-key.pem
sudo pki --self --ca --lifetime 3650 --in /root/pki/private/ca-key.pem --type rsa --dn "CN=VPN root CA" --outform pem > /root/pki/cacerts/ca-cert.pem
sudo cp -r /root/pki/* /etc/ipsec.d/
sudo sysctl -p
sudo ipsec start
