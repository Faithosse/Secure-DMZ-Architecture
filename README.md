# Secure DMZ Architecture Deployment

This repository demonstrates the implementation of a secure DMZ architecture using Linux virtual machines, focusing on secure SSH, relay, HTTPS server configurations, and IPsec VPN.

## Projects
1. **[S1: Frontline SSH Server](s1-ssh-server/)**: Configured a secure SSH server with RSA 4096-bit public-key authentication, disabled root login, and enforced a "no-key, no-login" policy.
2. **[S2: SSH Relay Server](s2-ssh-relay/)**: Deployed a secure SSH relay to mediate communication between S1 and S3 with public-key authentication and firewall restrictions.
3. **[S3: HTTPS Server](s3-https-server/)**: Configured a secure HTTPS server with a self-signed SSL/TLS certificate and basic authentication.
4. **[S4: S1–S4 IPsec VPN](s4-ipsec-vpn/)**: Established a secure IPsec VPN tunnel to encrypt IP payloads between S1 and S4.

## Technologies
- Linux (Ubuntu), SSH, RSA, OpenSSL, UFW, Apache2, SSL/TLS, IPsec, StrongSwan
- Tools: `ssh-keygen`, `sshd_config`, `ufw`, `openssl`, `apache2`, `strongswan`, `strongswan-pki`

## Getting Started
Visit the [S1 project](s1-ssh-server/), [S2 project](s2-ssh-relay/), [S3 project](s3-https-server/), or [S4 project](s4-ipsec-vpn/) for detailed setup instructions, scripts, and screenshots.

## License
[MIT License](LICENSE)
