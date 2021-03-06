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
	package{'squid.x86_64':
        ensure => 'present',
        }
       }

node gitpractice4 {
        file {'/etc/motd':
        content => ' This is gitpractice 2 system',
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
user { 'root':
  ensure           => 'present',
  comment          => 'root',
  gid              => '0',
  home             => '/root',
  password         => '$6$EsB6AgEn$UvLaHSar49IXUsJXpAIGMutOZhrYvVVxZinVG5qmgnsEoEi8oUL20JDaRDm6.huN3hsTkmjArTkexSQex3kuA/',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '0',
}	
	service {'postfix':
       ensure => 'running',
       enable => 'true',
       }
       service {'ntpd':
       ensure => 'running',
       enable => 'true',
       }
       service {'ntpdate':
	enable => 'true',
	}
       service { 'sshd':
       ensure => 'running',
       enable => 'true',
       }
       package {'firefox':
       ensure=> 'present',
       }
       package {'htop':
       ensure => 'present',
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
	ensure => 'directory',
	owner => 'satish',
	group => 'root',
	mode =>'0755',
	}
	file {'/etc/profile.d/become.sh':
	content => "alias become='/bin/sudo su -'",
	}
	package {'tig':
	ensure => 'present',
	}
	package {'wireshark.x86_64':
	ensure => 'present',
	}
	package {'samba':
	ensure => 'present',
	}
	package {'hiera.noarch':,
	ensure => 'present',
	#ensure	=> '1.3.4.5.el7',
	}
	package {'sysstat':,
	ensure => 'present',
	}
	package {'lvm2':,
	ensure => 'present',
	}
	package {'httpd.x86_64':
	ensure => 'present',
	}
	package {'httpd-devel.x86_64':
	ensure => 'present',
	}
	package {'httpd-itk.x86_64':
	ensure => 'present',
	}
	package {'httpd-tools.x86_64':
	ensure => 'present',
	}
	package {'yum-utils.noarch':
	ensure => 'present',
	}
	package {'screen-4.1.0-0.25.20120314git3c2946.el7.x86_64':
	ensure => 'present',
	}
	package {'vim-X11':
	ensure => 'present',
	}
	package {'trafshow-5.2.3-10.el7.x86_64':
	ensure => 'present',
	}
	package {'nmap-ncat.x86_64':
	ensure => 'present',
	}
	package {'psmisc-22.20-15.el7.x86_64':
	ensure => 'present',
	}
file {'/home/satish7/':
        ensure => 'present',
        owner => 'satish',
        }
	package {'pwgen.x86_64':
	ensure => 'present',
	}
	package {'traceroute-2.0.22-2.el7.x86_64':
	ensure => 'present',
	}
