# == Description
#
# Git settings and repositories specific for Stephen Copp (aka "scopp").
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::scopp::system_roles'
#
class people::scopp::git (
  $system_roles = undef
) {

  $_system_roles = hiera_array('people::scopp::system_roles')
  $roles = $system_roles ? { undef => $_system_roles, default => $system_roles}

  require people::scopp::dotfiles

  include git
  include people::scopp::git::global
  include people::scopp::git::general

  if member($roles, 'work') {
    include people::scopp::git::work
  }
  elsif member($roles, 'personal') {
    include people::scopp::git::personal
  }
  else {
    $roles_str = join($roles, ', ')
    notify {"system_role is neither personal or work: ${roles_str}" :}
  }

}
