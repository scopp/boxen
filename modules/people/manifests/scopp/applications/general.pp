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
  #include 'omnigraffle::pro'
  include 'packages::asciidoc'
  include 'packages::sourcetree_cli'
  include 'packages::tree'
  include 'skitch'
  include 'skype'
  include 'sourcetree'
  include 'spotify'
  include 'sublime_text_2'
  #include 'tmux'
  include 'virtualbox'
  include 'zsh'
  #include 'vagrant'

}
