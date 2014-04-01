

# == Description
#
# Installs Synergy
#
# == Parameters
#
# [*source*]
#   The source URL to get the DMG from.
#
# [*version*]
#   The version (e.g., '1.4.17-r2055') to install. *Ignored* if 'source' is provided.
#
class packages::synergy (
  $source = undef,
  $version = '1.4.17-r2055',
) {

  if $source {
    $url = $source
  }
  else {
    $url = "http://fossfiles.com/synergy/synergy-$version-MacOSX109-x86_64.dmg"
  }

  package { "synergy_${version}":
    ensure   => 'installed',
    source   => $url,
    provider => 'appdmg',
  }

}
