# Public: Install P4V.app into /Applications.
# TEMPORARY UNTIL https://github.com/steinim/puppet-p4merge fixes their URL
# Examples
#
#   include p4merge
class packages::p4merge {
  package { 'p4merge':
    provider => 'appdmg',
    source   => 'http://www.perforce.com/downloads/perforce/r14.1/bin.macosx106x86_64/P4V.dmg'
  }

  file { '/opt/boxen/bin/p4merge':
    ensure  => link,
    target  => '/Applications/p4merge.app/Contents/Resources/launchp4merge',
    require => Package['p4merge'];
  }
}