# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version.
# Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'apn-sonarqube-berkshelf'
  config.vm.box = 'chef/ubuntu-14.04'
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {

    }

    chef.run_list = [
      'recipe[app_sonarqube]'
    ]

    config.vm.network 'forwarded_port', :guest => 9000, :host => 8080
    config.vm.network 'forwarded_port', :guest => 3306, :host => 3306
  end
end
