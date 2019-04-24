#create a directory
file {'/test':
ensure => 'directory',
owner => 'satish',
group => 'adm',
mode => '0750',
}
file {'/test/satish.txt':
ensure => 'present',
owner => 'satish',
group => 'adm',
mode => '0750',
}
