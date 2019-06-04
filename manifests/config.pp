class barnyard2::config {

  file { '/etc/barnyard2.conf':
    ensure  => file,
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    content => epp('barnyard2/barnyard2.conf.epp'),
  }
}
