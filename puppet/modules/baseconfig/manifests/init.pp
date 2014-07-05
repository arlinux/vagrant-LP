class baseconfig {
			exec { 'apt-get update':
			  path => '/usr/bin',
			}

			package { ['vim','zip','wget']:
			  ensure => present,
			}
}
