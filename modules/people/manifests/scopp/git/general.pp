# == Description
#
# Git repositories specific for Stephen Copp (aka "scopp")
# that should be on all his machines.
#
class people::scopp::git::general {

  git::config::global {
    'user.name':     value  => 'Stephen Copp';
    'push.default':  value  => 'simple';
    'core.autocrlf': value  => 'input';
    'core.safecrlf': value  => 'warn';
    #'core.editor':   value  => 'subl -w';
  }

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/workspace"

  validate_absolute_path($srcdir)

  repository { "${srcdir}/process-jmeter-results" :
    source => 'https://github.com/scopp/process-jmeter-results.git',
    path   => "${srcdir}/process-jmeter-results",
  }
  ->
  git::config::local { "${srcdir}/process-jmeter-results":
    key   => 'user.email',
    value => 'info@stephencopp.com',
  }

}
