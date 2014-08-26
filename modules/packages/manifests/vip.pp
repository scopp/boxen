# == Description
#
# Installs Symantec VIP Access client
#
# == Parameters
#
# [*source*]
#   The source file to get the DMG from.
#
#
class packages::vip (
  $source = '/Users/scopp/Dropbox/TWC-personal/VIP_Access.dmg',
) {

  package { "vip":
    ensure   => 'installed',
    source   => $source,
    provider => 'pkgdmg',
    require  => Class['dropbox'],
  }

}
