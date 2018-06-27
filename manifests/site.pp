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
