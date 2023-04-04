# -*- mode: ruby -*-
# vim: set ft=ruby :

$bootstrap = <<SCRIPT
  ln --symbolic /usr/bin/python3 /usr/bin/python
SCRIPT

Vagrant.configure(2) do |config|

  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.ssh.forward_agent = true

  config.vm.define "vm1" do |tnt1|
    tnt1.vm.box = "ubuntu/2204"
    tnt1.vm.hostname="vm1"
    tnt1.vm.network "forwarded_port", guest: 8181, host: 8181
    tnt1.vm.network "forwarded_port", guest: 8282, host: 8282
    tnt1.vm.network "forwarded_port", guest: 3301, host: 3301
    tnt1.vm.network "forwarded_port", guest: 3302, host: 3302
    tnt1.vm.network :private_network, ip: "172.19.0.2"
    tnt1.vm.provision "shell", inline: $bootstrap
    tnt1.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "1"
    end
  end

  config.vm.define "vm2" do |tnt2|
    tnt2.vm.box = "ubuntu/2204"
    tnt2.vm.hostname="vm2"
    tnt2.vm.network "forwarded_port", guest: 8383, host: 8383
    tnt2.vm.network "forwarded_port", guest: 8484, host: 8484
    tnt2.vm.network "forwarded_port", guest: 3303, host: 3303
    tnt2.vm.network "forwarded_port", guest: 3304, host: 3304
    tnt2.vm.network :private_network, ip: "172.19.0.3"
    tnt2.vm.provision "shell", inline: $bootstrap
    tnt2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "1"
    end
  end

end
