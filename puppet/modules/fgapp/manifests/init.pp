# Deploying folioGallery - PHP, jQuery, Ajax Photo Gallery

class fgapp {
      file { "/var/www/fg/":
      source => "puppet:///modules/fgapp/app",
      ensure => directory,
      mode => 0755,
      owner => www-data,		
      group => www-data,
      replace => true,
      purge   => true,
      recurse => true;
    }
}
	
	
		
