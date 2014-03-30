# == Description
#
# Git repositories specific for Stephen Copp (aka "scopp") that
# should be on his work machines.
#
class people::scopp::git::work {

  include 'projects::omega'

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/workspace"

  validate_absolute_path($srcdir)

  git::config::local { "${srcdir}/omega":
    key     => 'user.email',
    value   => 'stephen.copp.@twcable.com',
    require => Class['projects::omega']
  }

  git::config::local { "${srcdir}/cq-gradle-plugins":
    key   => 'user.email',
    value => 'stephen.copp@twcable.com',
  }

}
