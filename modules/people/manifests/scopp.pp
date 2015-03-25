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
  include people::scopp::osx
  include people::scopp::symlinks

  ##########
  # TODO
  ##########

  # Add ~/.ssh/config
  # Add ~/.ssh/knownhosts
  # Add samurai
  # Add desktop icon sizes
  # Add Evernote
  # Add BetterSnapTool
}
