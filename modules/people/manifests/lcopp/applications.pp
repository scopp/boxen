# == Description
#
# Applications specific for Lauren (aka "lcopp").
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::lcopp::system_roles'
#
class people::lcopp::applications (
  $system_roles = undef
) {

  $_system_roles = hiera_array('people::lcopp::system_roles', [])
  $roles = $system_roles ? { undef => $_system_roles, default => $system_roles}

  include people::lcopp::applications::general

  if member($roles, 'work') {
    include 'people::lcopp::applications::work'
  }
  elsif member($roles, 'personal') {
    include 'people::lcopp::applications::personal'
  }

}
