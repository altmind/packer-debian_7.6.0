# Debian 7.6.0 [Packer](http://www.packer.io/) template

This template builds a VirtualBox image or DigitalOcean snaphot based on Debian Wheezy 7.6.0.

This is bare-bones template. It only sets up and updates debian base system + some utility packages(vim, mc, htop, curl, zip)
For vagrant, it also sets virtualbox guest additions and sets up user `vagrant`.

## Usage
1. Be sure you have Packer and [VirtualBox](https://www.virtualbox.org/)
installed in your system.
2. Clone this repository and go into it.
    * `git clone git@github.com:altmind/packer-debian_7.6.0.git`
    * `cd packer-debian_7.6.0.git`
3. Run Packer to build the VM.
    * `packer build -var "do_api_token=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" debian-7.6.0-wheezy.json`

A VM box file should be created in the working directory under the name
`packer_virtualbox-iso_virtualbox.box`.

Binary build for vagrant/virtualbox is available at http://bit.ly/vagrant-image-debian64-vbox

### Running the built VM
You can now use [Vagrant](https://www.vagrantup.com/) to run it by creating a
`Vagrantfile` with this content:

```ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian-7.6.0"
  config.vm.box_url = "http://bit.ly/vagrant-image-debian64-vbox"
end
```

And leverage and access the VM as usual with Vagrant:
    `vagrant up`
    `vagrant ssh`

## Credits
Based on the nice template written by [Tech-Angels](https://github.com/tech-angels/packer-templates) and on the nice template written by [jose-lpa](https://github.com/jose-lpa/packer-debian_7.6.0).