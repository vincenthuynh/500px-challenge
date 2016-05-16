vcsrepo { "$HOME/500px-challenge":
  ensure   => present,
  provider => git,
  source   => 'https://github.com/soundcloud/roshi',
}
#go get
->
exec { 'make roshi':
    command => '/usr/bin/make',
    cwd     => "$HOME/500px-challenge/roshi/roshi-server",
	environment => "GOPATH=$HOME/500px-challenge/roshi/roshi-server"
}
