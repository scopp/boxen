# == Description
#
# Git repositories specific for Stephen Copp (aka "scopp") that
# should be on his personal (non-work) machines.
#
class people::scopp::git::personal {

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/workspace"

  validate_absolute_path($srcdir)


}
