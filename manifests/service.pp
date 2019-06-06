class barnyard2::service {

  service { 'barnyard2':
    ensure => 'running',
    enable => true,
    flags  => $::barnyard2::service_flags,
  }

}
