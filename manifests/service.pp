class barnyard2::service {

  service { 'barnyard2':
    ensure => 'running',
    enable => true,
    flags  => $::suricata::service_flags,
    runas  => $::suricata::service_runas,
  }

}
