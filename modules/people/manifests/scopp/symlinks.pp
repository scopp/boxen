# == Description
#
# Adds good symlinks
#
class people::scopp::symlinks {

$home = "/Users/${::boxen_user}"
$srcdir = "${home}"

validate_absolute_path($srcdir)

file { "${srcdir}/Desktop/Dropbox":
  ensure  => 'link',
  target   => "${srcdir}/Dropbox",
}

file { "${srcdir}/Desktop/Downloads":
  ensure  => 'link',
  target   => "${srcdir}/Downloads",
}

file { "${srcdir}/workspace/scripts":
  ensure  => 'link',
  target   => "${srcdir}/Dropbox/development/scripts",
}

}
