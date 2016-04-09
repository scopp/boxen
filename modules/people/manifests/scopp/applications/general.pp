# == Description
#
# Applications specific for Stephen Copp (aka "scopp")
# that should be on all his machines.
#
class people::scopp::applications::general {

  include atom
  include chrome
  include dropbox
  include firefox
  include git
  include java
  include gimp
  include intellij
  include iterm2::stable
  include karabiner
  #include 'p4merge' - URL not working, see pacakages::p4merge.pp
  include silver_searcher
  include skype
  include sourcetree
  include spotify
  #include 'synergy' - URL not working, see pacakages::synergy.pp
  include virtualbox
  include wget
  include zsh

  include packages::p4merge
  include packages::ant
  include packages::git_process
  include packages::incognito
  include packages::jenv
  include packages::jmeter
  include packages::asciidoc
  include packages::sourcetree_cli
  include packages::synergy
  include packages::tree
  include packages::visualvm

class gimp {
  package { 'GNU Image Manipulation Program':
    provider => 'appdmg',
    source   => 'http://ftp.gimp.org/pub/gimp/v2.8/osx/gimp-2.8.10-dmg-1.dmg',
  }
}

  #include 'tmux'
  #include 'packages::gjslint'
  #include 'packages::jq'
  #include 'imagemagick'

  # vagrant::plugin { 'vagrant-vmware-fusion':
  #   license => 'puppet:///modules/people/joe/licenses/fusion.lic',
  # }

  # Homebrew Packages
  # package { [   #  "provider => homebrew, ensure => present," are assumed as defaults
  #     'gradle',
  #     'groovy',
  #   ]:
  # }

}
