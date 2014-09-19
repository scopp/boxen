# == Description
#
# Applications specific for Stephen Copp (aka "scopp").
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::scopp::system_roles'
#
class people::scopp::bin (
  $system_roles = undef
) {

  $_system_roles = hiera_array('people::scopp::system_roles', [])
  $roles = $system_roles ? { undef => $_system_roles, default => $system_roles}

  if member($roles, 'work') {
    include people::scopp::bin::general
  }
  elsif member($roles, 'personal') {
    include people::scopp::bin::general
  }

}
