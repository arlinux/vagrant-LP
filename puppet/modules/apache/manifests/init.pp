class apache {
	package {'apache2':
		ensure => present;
	}
	service {'apache2':
		ensure => "running",
		enable => "true";
	}
        file { "/etc/apache2/ports.conf":
   		 source  => "puppet:///modules/apache/ports.conf",
		 require => Package['apache2'],
		 notify  => Exec['reload-apache2'];
  }
}
