class profile::upstart (
) 
{
  exec { 'install upstart':
    command => '/bin/bash scripts/upstart.sh',
    cwd     => '/home/ubuntu/500px-challenge',
    onlyif  => '/usr/bin/test ! -d /usr/lib/upstart',
  }
  ->
  file { '/etc/init/redis.conf':
    source => "puppet:///modules/profile/redis.conf",
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
	notify  => Service['redis']
  }
  ->
  file { '/etc/init/roshi.conf':
    source => "puppet:///modules/profile/roshi.conf",
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
	notify  => Service['roshi']
  }
  ->
  file { '/etc/init/nginx.conf':
    source => "puppet:///modules/profile/nginx.conf",
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
	notify  => Service['nginx']
  }
  
  service { 'redis':
    ensure => running,
    enable => true,
  }
  
  service { 'roshi':
    ensure => running,
    enable => true,
  }
  
  #service { 'nginx':
  #  ensure => running,
  #  enable => true,
  #}
}