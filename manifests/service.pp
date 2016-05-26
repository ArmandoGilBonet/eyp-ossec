class ossec::service inherits ossec {

  #
  validate_bool($ossec::manage_docker_service)
  validate_bool($ossec::manage_service)
  validate_bool($ossec::service_enable)

  validate_re($ossec::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${ossec::service_ensure}")

  if(getvar('::eyp_docker_iscontainer')==undef or
      getvar('::eyp_docker_iscontainer')==false or
      getvar('::eyp_docker_iscontainer') =~ /false/ or
      $ossec::manage_docker_service)
  {
    if($ossec::manage_service)
    {
      #service or exec here
    }
  }
}
