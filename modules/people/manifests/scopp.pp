# == Description
#
# Machine configuration specific for Stephen Copp (aka "scopp").
#
class people::scopp {

  include people::scopp::dotfiles
  include people::scopp::bin
  include people::scopp::applications
  include people::scopp::ruby
  include people::scopp::git
  include people::scopp::sublime_text_2
  include people::scopp::osx

  ##########
  # TODO
  ##########

  # Add ~/.ssh/config
  # Add ~/.ssh/knownhosts
  # Add ~/bin/gw
  # Add Incognito.app
  # Add Adium Preferences
  # Add JMeter
  # Add ANT
  # Add samurai
  # Add VisualVM

}
