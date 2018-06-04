class { 'sudo': }
sudo::conf { 'web':
  content  => "web ALL=(ALL) NOPASSWD: ALL",
}
class { 'privileges': }
sudo::conf { 'jargyle':
  priority => 60,
  content  => "jargyle ALL=(ALL) NOPASSWD: ALL",
}
