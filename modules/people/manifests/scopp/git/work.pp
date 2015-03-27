# == Description
#
# Git repositories specific for Stephen Copp (aka "scopp") that
# should be on his work machines.
#
class people::scopp::git::work {

  include 'projects::work'

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/workspace"

  validate_absolute_path($srcdir)

}
