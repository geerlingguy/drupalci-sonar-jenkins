# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "geerlingguy/centos6"
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--name", "drupalci.dev"]
    vb.customize ["modifyvm", :id, "--memory", 2048]
    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  if Vagrant.has_plugin?('vagrant-auto_network')
    ip = '0.0.0.0'
    config.vm.network :private_network, ip: ip, auto_network: true
  else
    ip = '192.168.99.9'
    config.vm.network :private_network, ip: ip
  end

  config.vm.hostname = "drupalci.dev"
  aliases = [config.vm.hostname, ip]

  if Vagrant.has_plugin?('vagrant-hostsupdater')
    config.hostsupdater.aliases = aliases
  elsif Vagrant.has_plugin?('vagrant-hostmanager')
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.hostmanager.aliases = aliases
  end

  # Set the name of the VM. See: http://stackoverflow.com/a/17864388/100134
  config.vm.define :drupalci do |drupalci_config|
  end

  # Enable Ansible provisioner.
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.inventory_path = "provisioning/inventory-local"
    ansible.sudo = true
  end
end
