#!/bin/bash
# Generate self-signed SSL certificate and configure Apache
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/s3.key -out /etc/ssl/certs/s3.crt -subj "/CN=www.s3.local"
sudo a2enmod ssl
sudo a2ensite default-ssl
sudo systemctl restart apache2
