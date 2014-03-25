# Class: burp::client
#
#
class burp::client {

  host { $::fqdn:
    ensure       => 'present',
    host_aliases => [$::hostname, 'localhost'],
    ip           => '127.0.0.1',
    target       => '/etc/hosts',
  }

  file { '/etc/burp/burp.conf':
    ensure  => present,
    mode    => '600',
    content => template("burp/burp.conf.erb"),
    require => Package['burp']
  }

}



host { 'develop-rudi.openstacklocal':
  ensure       => 'present',
    host_aliases => ['develop-rudi', 'localhost'],
      ip           => '127.0.0.1',
        target       => '/etc/hosts',
	i
