# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
REQUIRED_PLUGINS        = %w(vagrant-vbguest vagrant-disksize)

plugins_to_install = REQUIRED_PLUGINS.select { |plugin| not Vagrant.has_plugin? plugin }
if not plugins_to_install.empty?
  puts "Installing required plugins: #{plugins_to_install.join(' ')}"
  if system "vagrant plugin install #{plugins_to_install.join(' ')}"
    exec "vagrant #{ARGV.join(' ')}"
  else
    abort "Installation of one or more plugins has failed. Aborting. Please read the Bike Index README."
  end
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  #config.vm.box = "araulet/ubuntu1804-desktop-minimal"
  config.vm.box = "chenhan/lubuntu-desktop-18.04"
  config.vm.box_version = "20180704.0.0"
  config.disksize.size = "10GB"

  config.vm.provider :virtualbox do |vbox|
    vbox.customize ["modifyvm", :id, "--memory", "2048"]
    vbox.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vbox.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
    vbox.customize ["modifyvm", :id, "--memory", "2048"]
    vbox.customize ["modifyvm", :id, "--vram", "128"]
    #vbox.customize ["modifyvm", :id, "--accelerate2dvideo", "on"]
    vbox.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vbox.gui = ENV['VMGUI'].nil? ? false : true
  end

  # Use Chef Solo to provision our virtual machine
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["vm/cookbooks", "vm/site-cookbooks"]
    
    # General
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "system::install_packages"
    
    # Code editors
    chef.add_recipe "vim"
    chef.add_recipe "vscode"

    # Ruby
    chef.add_recipe "rubyvmdeps"


    chef.json = {
      system: {
        packages: {
          install: [
            "libsdl2-dev",
            "libsdl2-image-dev",
            "libsdl2-mixer-dev",
            "libsdl2-ttf-dev"
          ]
        }
      }
    }
  end
end