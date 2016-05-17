class profile::proxy (
) 
{
  class { 'nginx': }

  nginx::resource::vhost { 'roshi-server':
    listen_port    => 80,
    proxy          => 'http://localhost:6302',
  }
}