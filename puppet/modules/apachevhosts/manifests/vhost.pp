# == Define: vhost
#
# Adds and enables an Apache virtual host
#
define apachevhosts::vhost() {
  file {
    "/etc/apache2/sites-enabled/fg.conf":
      source  => "puppet:///modules/apachevhosts/fg.conf",
      require => Package['apache2'],
      notify  => Service['apache2'];
  }
}
