# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant version: 1.6.3
# Required plugins:
# - [vagrant-librarian-puppet](https://github.com/mhahn/vagrant-librarian-puppet)
#
# Recommended plugins:
# - A [Local Domain Resolution plugin](https://github.com/mitchellh/vagrant/wiki/Available-Vagrant-Plugins#local-domain-resolution)

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
  config.vm.hostname = "solr"
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true

  config.vm.provision "puppet" do |puppet|
    puppet.facter = {
      "fqdn" => "solr"
    }
  end
end
