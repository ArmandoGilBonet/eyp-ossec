# == Class: ossec
#
# === ossec documentation
#
class ossec(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits ossec::params{

  class { '::ossec::install': } ->
  class { '::ossec::config': } ~>
  class { '::ossec::service': } ->
  Class['::ossec']

}
