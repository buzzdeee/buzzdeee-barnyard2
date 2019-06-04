# Class: barnyard2
# ===========================
#
# Full description of class barnyard2 here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'barnyard2':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2019 Your name here, unless otherwise noted.
#
class barnyard2 (
  String $logdir,
  String $classification_file,
  String $reference_file,
  String $sid_file,
  String $hostname,
  String $interface,
  String $sguil_sensor_name,
  String $sguil_agent_port,
  String $service_flags,
  Optional[String] $gen_file,
  Optional[String] $service_runas,
) {

  contain ::barnyard2::install
  contain ::barnyard2::config
  contain ::barnyard2::service

  Class['::barnyard2::install']
  -> Class['::barnyard2::config']
  ~> Class['::barnyard2::service']


}
