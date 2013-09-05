# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :forwarded_port, guest: 3000, host: 3000 # forward the default rails port
  config.vm.network :forwarded_port, guest: 3306, host: 3306 # forward the mysql port
#  config.vm.network :forwarded_port, guest: 5432, host: 5432 # forward the postgresql port


  config.vm.provision :shell, :inline => "gem install chef --version 11.4.2"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["chef/cookbooks", "chef/site-cookbooks"]
    chef.roles_path     = [[:host, "chef/roles"]]

    chef.add_role "rails-dev"
    chef.json = {
      "mysql" => {
        "server_root_password"   => "",
	      "server_debian_password" => "",
	      "server_repl_password"   => ""
      },
      "postgresql"  => {
        "password"  => {
	        "postgres"  => ""
	      }
      }
    }
  end
end

