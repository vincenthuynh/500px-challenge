

  exec { 'install upstart':
    command => '/bin/bash scripts/upstart.sh',
    cwd     => '/home/ubuntu/500px-challenge',
    onlyif  => '/bin/ls /usr/lib/ | /bin/grep -c upstart',
  }
  ->
  file { '/etc/init/redis.conf':
    source => "puppet:///modules/profile/redis.conf",
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
  }
  ->
  file { '/etc/init/roshi.conf':
    source => "puppet:///modules/profile/roshi.conf",
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
  }
  ->
  file { '/etc/init/nginx.conf':
    source => "puppet:///modules/profile/nginx.conf",
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
  }