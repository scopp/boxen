# == Description
#
# Adds a link to invoke Atom from the command line: `atom`
#
class packages::atom_cli {

  file { '/usr/bin/atom':
    ensure  => 'link',
    target  => '/Applications/Atom.app/Contents/SharedSupport/bin/atom',
    require => Class['atom']
  }

}
