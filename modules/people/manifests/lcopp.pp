# == Description
#
# Machine configuration specific for Lauren (aka "lcopp").
#
class people::lcopp {

  include people::lcopp::dotfiles
  include people::lcopp::applications
  include people::lcopp::ruby
  include people::lcopp::sublime_text_2
  include people::lcopp::osx
  include people::lcopp::symlinks

}
