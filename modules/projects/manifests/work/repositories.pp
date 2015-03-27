# == Description
#
# Repositories specific for the work projects.
#
class projects::work::repositories(
  $srcdir = undef
) {

  if $srcdir {
    $_srcdir = $srcdir
  }
  else {
    $home = "/Users/${::boxen_user}"
    $_srcdir = "${home}/workspace"
  }

  validate_absolute_path($_srcdir)

  #
  # add repos HERE
  #

}
