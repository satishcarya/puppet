class fetch_file {

  include ::wget

  wget::fetch { 'https://www.unixdaemon.net/index.xml':
    destination => '/tmp/unixdaemon-feed.xml',
    timeout     => 15,
    verbose     => true,
  }
}
