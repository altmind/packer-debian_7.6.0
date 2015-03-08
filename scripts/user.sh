# Set up Vagrant.

useradd -G sudo -m -s /bin/bash -N app

passwd -l app

# Install vagrant keys
mkdir -pm 700 /home/app/.ssh
curl -Lo /home/app/.ssh/authorized_keys 'http://bit.ly/altmind_id_rsa_pub'
chmod 0600 /home/app/.ssh/authorized_keys
chown -R app /home/app/.ssh

