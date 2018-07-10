class perl {
  define install-cpan () {
    exec { "cpan_load_${name}":
      command => "perl -I.cpan -MCPAN -e '\$ENV{PERL_MM_USE_DEFAULT}=1; install $name'",
      cwd => "/root",
      path => "/usr/bin:/usr/sbin:/bin:/sbin",
      unless => "perl -M$name -e 1",
    }
  }
  package { 'perl': ensure => installed }

}

perl::install-cpan { "Bundle::CPAN": }
