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
  include 'intellij'
  include 'iterm2::stable'
  include 'packages::adium_prefs'
  include 'packages::ant'
  include 'packages::incognito'
  include 'packages::java7'
  include 'packages::java6'
  include 'packages::jmeter'
  include 'packages::asciidoc'
  include 'packages::sourcetree_cli'
  include 'packages::tree'
  include 'packages::visualvm'
  include 'skitch'
  include 'skype'
  include 'sourcetree'
  include 'spotify'
  include 'sublime_text_2'
  include 'virtualbox'
  include 'wget'
  include 'zsh'

  #include 'omnigraffle::pro'
  #include 'tmux'
  #include 'vagrant'
  #include 'p4merge'
  #include 'packages::git_process'
  #include 'packages::gjslint'
  #include 'packages::jq'
  #include 'packages::sublime_text_2_cli'
  #include 'packages::sublime_text_2_package_management'
  #include 'ruby::global'

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
