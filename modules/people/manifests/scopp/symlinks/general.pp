# == Description
#
# Adds good symlinks
#
class people::scopp::symlinks::general {

$home = "/Users/${::boxen_user}"
$srcdir = "${home}"

validate_absolute_path($srcdir)

file { "${srcdir}/workspace/":
    ensure => "directory",
}

file { "/opt/bin":
    ensure => "directory",
}

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
