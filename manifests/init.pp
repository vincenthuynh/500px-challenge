# Driver script to run each profile

class { 'profile::redis': } ->
class { 'profile::roshi': } ->
class { 'profile::proxy': } ->
class { 'profile::upstart': }