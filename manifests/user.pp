$ puppet resource user luke
    user { 'luke':
     home => '/home/luke',
     uid => '100',
     ensure => 'present',
     comment => 'Luke Kanies,,,',
     gid => '1000',
     shell => '/bin/bash',
     groups => ['sysadmin','audio','video','puppet']
    }
