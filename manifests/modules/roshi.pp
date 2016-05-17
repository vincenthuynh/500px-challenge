
file { '/home/ubuntu/500px-challenge/manifests/modules/roshi-server':
    ensure   => file,
    mode     => '0755',
}
->
exec { 'start roshi':
    command => '/home/ubuntu/500px-challenge/manifests/modules/roshi-server -redis.instances=localhost:6379 &',
    cwd     => "/home/ubuntu/500px-challenge/manifests/modules",
}
