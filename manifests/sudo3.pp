user { 'user1':
        home => '/home/user1',
        uid => '552',
        ensure => 'present',
comment => 'user1',
gid => '1000',
shell => '/bin/bash',
groups => ['adm','puppet']
}
class { 'privileges': 
sudo::conf { 'user1':
  priority => 60,
  content  => "user1 ALL=(ALL) NOPASSWD: ALL",
}
}
