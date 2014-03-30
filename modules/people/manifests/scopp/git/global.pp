# == Description
#
# Git settings anspecific for Stephen Copp (aka "scopp")
# that should be on all his machines.
#
class people::scopp::git::global {

  git::config::global {
    'user.name':     value  => 'Stephen Copp';
    'push.default':  value  => 'simple';
    'core.autocrlf': value  => 'input';
    'core.safecrlf': value  => 'warn';
    'core.editor':   value  => 'subl -w';
  }

}
