# Secure-DMZ-Architecture
Implementation of a secure DMZ architecture with SSH, HTTPS, PKI, and IPsec VPN configurations
# Secure DMZ Architecture Deployment

This repository demonstrates the implementation of a secure DMZ architecture using Linux virtual machines, focusing on secure SSH, relay, and HTTPS server configurations (more projects to be added).

## Projects
1. **[S1: Frontline SSH Server](s1-ssh-server/)**: Configured a secure SSH server with RSA 4096-bit public-key authentication, disabled root login, and enforced a "no-key, no-login" policy.
2. **[S2: SSH Relay Server](s2-ssh-relay/)**: Deployed a secure SSH relay to mediate communication between S1 and S3 with public-key authentication and firewall restrictions.
3. **[S3: HTTPS Server](s3-https-server/)**: Configured a secure HTTPS server with a self-signed SSL/TLS certificate and basic authentication.

## Technologies
- Linux (Ubuntu), SSH, RSA, OpenSSL, UFW, Apache2, SSL/TLS
- Tools: `ssh-keygen`, `sshd_config`, `ufw`, `openssl`, `apache2`

## Getting Started
Visit the [S1 project](s1-ssh-server/), [S2 project](s2-ssh-relay/), or [S3 project](s3-https-server/) for detailed setup instructions, scripts, and screenshots.

## License
[MIT License](LICENSE)
