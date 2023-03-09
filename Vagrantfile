# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"

  # General Vagrant VM configuration.
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provider :virtualbox do |box|
    box.memory = 8192
    box.cpus = 4
    # box.linked_clone = true
  end

  config.vm.provision :shell, path: "scripts/install-ansible.sh"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "main.playbook.yml"
    ansible.verbose = "vv"
  end
end
