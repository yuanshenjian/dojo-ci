# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define :jenkins_ubuntu do |config|
     config.vm.box = "ubuntu/trusty64"
     config.vm.hostname = "jenkins-ubuntu"
     config.vm.synced_folder "~/Personal-sjyuan/ysj_hub/docker-jenkins", "/home/vagrant/docker-jenkins"
     config.vm.network "private_network", ip: "10.29.2.122"
     config.vm.network "forwarded_port", guest: 80, host: 80
     config.vm.network :forwarded_port, guest: 8080, host: 8080
     config.vm.provision :shell, path: "./setup-env.sh"
     config.vm.provider "virtualbox" do |vb|
       vb.memory = "1024"
     end
   end
end
