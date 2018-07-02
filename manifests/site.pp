node gitpractice-2 {
	file {'/etc/motd':
        content => ' This is gitpractice 2 system',
        }
       
        }
      
     node gitpractice-3 {
      
       file {'/etc/motd':
       content => 'This is gitpractice 3 machine',
       }
         
       }

      node gitpractice {
    
      file {'/etc/motd':
      content => 'PuppetMaster',
            }
         
       }

      node puppetclient3 {
    
      file {'/etc/motd':
      content => 'PuppetClient3',
            }
         
       }

      node puppetclient4 {
    
      file {'/etc/motd':
      content => 'PuppetClient4',
            }
         
       }
 #$ puppet resource user luke
    user { 'luke':
  ensure           => 'present',
  comment          => 'Luke Kanies',
  gid              => '1000',
  groups           => ['adm', 'puppet'],
  home             => '/home/luke',
  password         => '$6$cMRc.3wy$waM.7QBK10mSSOkuslJGQ4LxgveUky/q60m2ZUBE7xfyfuBnrbvVMSAvlqqRXC1voqSIzPi9wqr8M/ci.nSUW0',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '100',
} 
user { 'satish':
  ensure           => 'present',
  comment          => 'Satish Arya',
  gid              => '1000',
  groups           => ['root', 'adm', 'puppet'],
  home             => '/home/satish',
  password         => '$6$doRdY3NN$KwXNIWTLermPMuutO6CV1molhrvCPY.GcQTZRooLFPBlDoNY/WsIKjjNwg32iCsxRmwz6hPBR.i6G.F/bGOEA.',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '550',
}      
	service {'postfix':
       ensure => 'running',
       enable => 'true',
       }
       service {'ntpd':
       ensure => 'running',
       enable => 'true',
       }
       service { 'sshd':
       ensure => 'running',
       enable => 'true',
       }
       package {'firefox':
       ensure=> '52.8.0-1.el7.centos',
       }
       package {'htop':
       ensure => '2.2.0-1.el7',
       }
       package { 'mlocate':
       ensure => '0.26-8.el7';
       }
       package {'curl':
       ensure=> 'present',
       }
       package {'telnet':
       ensure => 'present',
       }
       package {'cowsay':
       ensure=> 'present',
       }
       package {'figlet':
       ensure=> 'present',
       }
       package {'fortune-mod':
       ensure => 'present',
       }
       package {'bind-utils':
       ensure => 'present',
       }
	file {'/home/satish/':
	ensure => 'present',
	owner => 'satish',
	}
	package {'tig':
	ensure => 'present',
	}
	package {'wireshark.x86_64':
	ensure => 'present',
	}
	package {'nano.x86_64':
	ensure => 'present',
	}
