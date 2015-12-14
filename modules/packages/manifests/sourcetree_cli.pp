# == Description
#
# Adds a link to invoke SourceTree from the command line: `stree`
#
class packages::sourcetree_cli {

  include sourcetree

  file { '/opt/bin/stree':
    ensure  => 'link',
    target  => '/Applications/SourceTree.app/Contents/Resources/stree',
    require => Class['sourcetree']
  }

}
