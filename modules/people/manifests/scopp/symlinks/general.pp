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

file { '/Library/Java/JavaVirtualMachines/jdk':
ensure  => 'link',
target  => '/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk',
}

}
