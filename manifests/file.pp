
file {"/root/test-file.txt":
ensure => 'file',
content => 'This is a file managed by puppet',
}
