node gitpractice-2 {

file {'/etc/motd':
	content => 'This is gitpractice 2 system',
	}

	service {'postfix':
	ensure => 'stopped',
	enable => 'true',
}
service {'ntpd':
        ensure => 'running',
        enable => 'true',
}

}

node gitpractice-3 {

file {'/etc/motd':
        content => 'This is gitpractice 3 machine',
        }

        service {'postfix':
        ensure => 'stopped',
        enable => 'true',
}
}

#$ puppet resource user luke
    user { 'luke':
     home => '/home/luke',
     uid => '100',
     ensure => 'present',
     comment => 'Luke Kanies',
     gid => '1000',
     shell => '/bin/bash',
     groups => ['adm','puppet']
    }

user { 'satish':
	home => '/home/satish',
	uid => '550',
	ensure => 'present',
comment => 'Satish Arya',
gid => '1000',
shell => '/bin/bash',
groups => ['adm','puppet']
}
node default {

file {'/etc/motd':
        content => 'Tis is gitpractice 2 system',
        }

        service {'postfix':
        ensure => 'stopped',
        enable => 'true',
}
}
