# -*- mode: ruby -*-
# vi: set ft=ruby :

# Required plugins:
# - [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus)
# - [librarian-chef](https://github.com/jimmycuadra/vagrant-librarian-chef)
#
# Recommended plugins:
# - A [Local Domain Resolution plugin](https://github.com/mitchellh/vagrant/wiki/Available-Vagrant-Plugins#local-domain-resolution)

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-12.04"
  config.vm.hostname = "solr"
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true

  # As of 2014-04-04, 11.10.4 was the latest version that worked.
  config.omnibus.chef_version = '11.10.4'

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "solr_app"

    chef.json = {
      "solr_app" => { :version => '4.7.1' }
    }
  end
end
