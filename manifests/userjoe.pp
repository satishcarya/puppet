user { 'joe':
ensure => present,
uid => '1001',
gid => '1000',
comment => 'Joe User',
managehome => true,
}
