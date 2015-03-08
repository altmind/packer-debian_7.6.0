# Set up Vagrant.

# Create the user vagrant with password vagrant
useradd -G sudo -m -s /bin/bash -N vagrant
echo vagrant:vagrant | chpasswd

# Install vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys 'http://bit.ly/altmind_id_rsa_pub'
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
