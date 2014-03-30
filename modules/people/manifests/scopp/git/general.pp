# == Description
#
# Git repositories specific for Stephen Copp (aka "scopp")
# that should be on all his machines.
#
class people::scopp::git::general {

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/workspace"

  validate_absolute_path($srcdir)

}
