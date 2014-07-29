# == Description
#
# Applications specific for Stephen Copp (aka "scopp")
# that should be on all his machines.
#
class people::scopp::applications::general {

  include 'adium'
  include 'chrome'
  include 'docker'
  include 'dropbox'
  include 'firefox'
  include 'git'
  include 'packages::git_process'
  include 'gimp'
  include 'intellij'
  include 'iterm2::stable'
  #include 'p4merge' - URL not working, see pacakages::p4merge.pp
  include 'packages::p4merge'
  include 'packages::adium_prefs'
  include 'packages::ant'
  include 'packages::incognito'
  include 'java'
  include 'packages::java6'
  include 'packages::jmeter'
  include 'packages::asciidoc'
  include 'packages::sourcetree_cli'
  include 'packages::sublime_text_2_cli'
  include 'packages::sublime_text_2_package_management'
  include 'packages::synergy'
  include 'packages::tree'
  include 'packages::visualvm'
  include 'skitch'
  include 'skype'
  include 'sourcetree'
  include 'spotify'
  include 'sublime_text_2'
  #include 'synergy' - URL not working, see pacakages::synergy.pp
  include 'virtualbox'
  include 'wget'
  include 'zsh'

class gimp {
  package { 'GNU Image Manipulation Program':
    provider => 'appdmg',
    source   => 'http://ftp.gimp.org/pub/gimp/v2.8/osx/gimp-2.8.10-dmg-1.dmg',
  }
}

  #include 'omnigraffle::pro'
  #include 'tmux'
  #include 'vagrant'
  #include 'p4merge'
  #include 'packages::gjslint'
  #include 'packages::jq'

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
