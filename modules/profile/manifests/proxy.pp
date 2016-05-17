class profile::proxy (
) 
{
  class { 'nginx': }

  nginx::resource::vhost { 'roshi-server':
    listen_port    => 80,
    proxy          => 'http://localhost:6302',
    require        => Class['::nginx::config']
  }
  ->
  firewall { '101 whitelist subnet':
    proto       => 'tcp',
    destination => '172.31.32.0/25',
    iniface     => 'eth0',
    action      => 'accept',
  }
}
