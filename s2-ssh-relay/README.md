# S2: SSH Relay Server Configuration

## Objective
Deploy S2 as a secure SSH relay to mediate communication between S1 and S3, using public-key authentication, disabled root login, and firewall restrictions to allow only S1.

## Technologies
- SSH, RSA (2048-bit), UFW, Linux (Ubuntu)
- Tools: `ssh-keygen`, `sshd_config`, `ufw`

## Setup Steps
1. Assigned static IP (192.168.1.30) to S2 using network configuration.
2. Installed OpenSSH server: `sudo apt install -y openssh-server`.
3. Created users `edge` (for S1) and `server` (for S3): `sudo adduser edge` and `sudo adduser server`.
4. Configured `/etc/ssh/sshd_config` to enforce security settings:
   - `PermitRootLogin no`
   - `PubkeyAuthentication yes`
   - `PasswordAuthentication no`
   - `AllowUsers edge server`
5. Configured firewall with UFW to allow SSH from S1 (192.168.1.20) and S3 (192.168.1.40).
6. Generated RSA key pairs on S1 and S3 using `ssh-keygen`.
7. Copied public keys to S2’s `/home/edge/.ssh/authorized_keys` and `/home/server/.ssh/authorized_keys`.
8. Set permissions: `chmod 600 /home/edge/.ssh/authorized_keys` and `chmod 600 /home/server/.ssh/authorized_keys`.
9. Tested SSH connections from S1 (as `edge`) and S3 (as `server`) and verified restrictions.

## Results
- S2 securely relayed traffic between S1 and S3.
- Unauthorized access (e.g., root, other users) was blocked.

## Files
- `scripts/setup-ssh.sh`: Installs SSH server and creates users.
- `scripts/configure-firewall.sh`: Configures UFW rules.
- `configs/sshd_config`: SSH configuration file.
- `images/*`: Screenshots of setup and testing.

## Screenshots
- Static IP Configuration: ![Static IP](images/static-ip-s2.png)
- SSH Installation: ![SSH Install](images/ssh-install-s2.png)
- SSH Configuration: ![SSH Config](images/ssh-config-s2.png)
- Firewall S1: ![Firewall S1](images/firewall-s1.png)
- Firewall S3: ![Firewall S3](images/firewall-s3.png)
- User Edge: ![User Edge](images/user-edge.png)
- User Server: ![User Server](images/user-server.png)
- Authorized Keys Edge: ![Authorized Keys Edge](images/authorized-keys-edge.png)
- Authorized Keys Server: ![Authorized Keys Server](images/authorized-keys-server.png)
- SSH Test Edge: ![SSH Test Edge](images/ssh-test-edge.png)
- SSH Test Server: ![SSH Test Server](images/ssh-test-server.png)
- Restricted Access Test: ![Restricted Access](images/restricted-access-test-s2.png)
