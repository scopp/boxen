# == Description
#
# Installs VisualVM
#
# == Parameters
#
# [*source*]
#   The source URL to get the DMG from.
#
# [*version*]
#   The version (e.g., '137') to install. *Ignored* if 'source' is provided.
#
class packages::visualvm (
  $source = undef,
  $version = '137',
) {

  if $source {
    $url = $source
  }
  else {
    $url = "https://java.net/projects/visualvm/downloads/download/release137/VisualVM_${version}.dmg"
  }

  package { "visualvm_${version}":
    ensure   => 'installed',
    source   => $url,
    provider => 'appdmg',
  }

}
