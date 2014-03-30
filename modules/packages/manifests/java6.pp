# == Description
#
# Installs Java 6
#
# == Parameters
#
# [*source*]
#   The source URL to get the DMG from.
#
# [*update*]
#   The update version (e.g., 'u45') to install. *Ignored* if 'source' is provided.
#
class packages::java6 (
  $source = undef,
  $update = 'u65',
) {

  if $source {
    $url = $source
  }
  else {
    $url = "http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg"
  }

  package { "java6${update}":
    ensure   => 'installed',
    source   => $url,
    provider => 'pkgdmg',
  }

  file { '/Library/Java/JavaVirtualMachines/jdk1.6.0':
    ensure  => 'link',
    target  => '/System/Library/Java/JavaVirtualMachines/1.6.0.jdk',
  }

}
