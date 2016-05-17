class profile::roshi (
) 
{
  file { '/home/ubuntu/500px-challenge/modules/profile/files/roshi-server':
      ensure   => file,
      mode     => '0755',
  }
  ->
  exec { 'start roshi':
      command => '/home/ubuntu/500px-challenge/modules/profile/files/roshi-server -redis.instances=localhost:6379 &',
      cwd     => "/home/ubuntu/500px-challenge",
  }
}