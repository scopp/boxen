# == Description
#
# Applications specific for Lauren (aka "lcopp")
# that should be on all his machines.
#
class people::lcopp::applications::general {

  include 'chrome'
  include 'dropbox'
  include 'firefox'
  include 'iterm2::stable'
  include 'packages::incognito'
  include 'java'
  include 'packages::sublime_text_2_cli'
  include 'packages::sublime_text_2_package_management'
  include 'packages::tree'
  include 'skype'
  include 'spotify'
  include 'sublime_text_2'
  include 'wget'
  include 'zsh'

}
