# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.

  config.vm.box = "chef_dev"

  config.vm.provision :shell, :inline => "sudo apt-get update -y"

  config.vm.provision :shell, :inline => "sudo apt-get install vim ntp -y"

  config.vm.provision :shell, :inline => "sudo service ntp restart"

  config.vm.provision :shell, :path => "./install_java8.sh"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 1024] 
    # vb.gui = true
   end

   # config.vm.provider "virtualbox" do |vb|
   #   ### Change network card to PCnet-FAST III
   #   # For NAT adapter
   #   vb.customize ["modifyvm", :id, "--nictype1", "Am79C973"]
   # end

   config.vm.define :jenkins_master do |vm_config|
    vm_config.vm.hostname = "jenkins-master.capgemini.com"
    # vm_config.vm.network "forwarded_port", guest: 8140, host: 8140
   end

end
