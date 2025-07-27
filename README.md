# Secure-DMZ-Architecture
Implementation of a secure DMZ architecture with SSH, HTTPS, PKI, and IPsec VPN configurations
# Secure DMZ Architecture Deployment

This repository demonstrates the implementation of a secure DMZ architecture using Linux virtual machines, focusing on secure SSH and relay server configurations (more projects to be added).

## Projects
1. **[S1: Frontline SSH Server](s1-ssh-server/)**: Configured a secure SSH server with RSA 4096-bit public-key authentication, disabled root login, and enforced a "no-key, no-login" policy.
2. **[S2: SSH Relay Server](s2-ssh-relay/)**: Deployed a secure SSH relay to mediate communication between S1 and S3 with public-key authentication and firewall restrictions.

## Technologies
- Linux (Ubuntu), SSH, RSA, OpenSSL, UFW
- Tools: `ssh-keygen`, `sshd_config`, `ufw`

## Getting Started
Visit the [S1 project](s1-ssh-server/) or [S2 project](s2-ssh-relay/) for detailed setup instructions, scripts, and screenshots.

## License
[MIT License](LICENSE)
