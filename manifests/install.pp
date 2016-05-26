# == Class: ossec
#
# === ossec::install documentation
#
class ossec::install inherits ossec {

  if($ossec::manage_package)
  {
    # package here, for example: 
    #package { $ossec::params::package_name:
    #  ensure => $ossec::package_ensure,
    #}
  }

}
