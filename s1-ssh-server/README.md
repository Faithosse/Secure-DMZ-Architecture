# S1: Frontline SSH Server Configuration

## Objective
Configure S1 as a frontline SSH server with RSA 4096-bit public-key authentication, disabled root login, and a "no-key, no-login" policy to secure administrative access.

## Technologies
- SSH, RSA (4096-bit), OpenSSL, Linux (Ubuntu)
- Tools: `ssh-keygen`, `sshd_config`

## Setup Steps
1. Assigned static IP (192.168.1.20) to S1 using network configuration.
2. Installed OpenSSH server: `sudo apt install -y openssh-server`.
3. Created admin user: `sudo adduser admin`.
4. Configured `/etc/ssh/sshd_config` to enforce security settings:
   - `PermitRootLogin no`
   - `PubkeyAuthentication yes`
   - `PasswordAuthentication no`
   - `AllowUsers admin`
5. Generated RSA key pair (4096-bit) on Admin VM (192.168.1.10) using `ssh-keygen`.
6. Copied public key to S1’s `/home/admin/.ssh/authorized_keys` via a shared folder.
7. Set permissions: `chmod 600 /home/admin/.ssh/authorized_keys`.
8. Tested SSH connection from Admin VM and verified restricted access for unauthorized users.

## Results
- Secured S1 against brute-force attacks and unauthorized access.
- Only admin users with valid private keys could connect via SSH.

## Files
- `scripts/setup-ssh.sh`: Installs SSH server and creates admin user.
- `scripts/configure-sshd.sh`: Applies SSH configuration settings.
- `configs/sshd_config`: SSH configuration file.
- `images/*`: Screenshots of setup and testing.

## Screenshots
- Static IP Configuration: ![Static IP](images/static-ip-S1.png)
- SSH Installation: ![SSH Install](images/ssh-install-s1.png)
- SSH Configuration: ![SSH Config](images/ssh-config-s1.png)
- Key Generation: ![Key Gen](images/key-gen-admin.png)
- Shared Folder: ![Shared Folder](images/shared-folder.png)
- Authorized Keys: ![Authorized Keys](images/authorized-keys.png)
- SSH Connection Test: ![Connection Test](images/ssh-connection-test.png)
- Restricted Access Test: ![Restricted Access](images/restricted-access-test.png)
