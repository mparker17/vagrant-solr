#
# @file
# Default Vagrant manifest.
#
# @see http://docs.vagrantup.com/v2/provisioning/puppet_apply.html
#

# Ensure we execute commands with a sane path.
Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ] }

# Ensure apt-get update is run before every package installation attempt.
class { '::apt':
}
Class['::apt::update'] -> Package <| |>

# Now install Solr.
class { 'solr':
  mirror  => 'http://apache.org/dist/lucene/solr/',
  version => '4.7.2',
  cores   => ['development', 'staging', 'production'],
}
