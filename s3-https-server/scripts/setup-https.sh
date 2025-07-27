#!/bin/bash
# Install Apache2 and create basic structure
sudo apt update
sudo apt install -y apache2
sudo mkdir -p /var/www/html/secure
sudo chown www-data:www-data /var/www/html/secure
