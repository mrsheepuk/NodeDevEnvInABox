# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/vivid64"
  config.vm.synced_folder ".", "/vagrant/",
    :mount_options => ["dmode=777","fmode=666"]
  config.vm.synced_folder "ansible", "/ansible/",
    :mount_options => ["dmode=777","fmode=666"]
  config.vm.provider "virtualbox" do |vb|
    vb.name = "NodeDevEnvInABox"
    vb.cpus = 2
    vb.memory = 1024
  end
  config.vm.hostname = "nodedevenv.dev"
  config.vm.network "public_network"
  #, ip: "192.168.20.16"
  config.vm.provision :shell, :path => "provision.sh"
end
