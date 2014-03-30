# == Description
#
# "Dot files" for Stephen Copp (aka "scopp").
#
# == Assumptions
#
# The .zshenv template assumes that the 'github_token' fact has been set.
# In Boxen, this is typically done in ~/.boxen/config.json
#
class people::scopp::dotfiles {
  include git

  $home = "/Users/${::boxen_user}"

  repository { 'oh-my-zsh' :
    source => 'https://github.com/scopp/oh-my-zsh.git',
    path   => "${home}/.oh-my-zsh",
  }

  file { "${home}/.zshrc":
    source => 'puppet:///modules/people/scopp/zshrc',
  }

  file { "${home}/.zshenv":
    content => template('people/scopp/zshenv.erb')
  }

  file { "${home}/.zprofile":
    source => 'puppet:///modules/people/scopp/zprofile',
  }

  file { "${home}/.gitconfig":
    # This should probably be managed using the git module instead...
    source => 'puppet:///modules/people/scopp/gitconfig',
  }

  file { "${home}/.profile":
    source => 'puppet:///modules/people/scopp/profile',
  }

  file { "${home}/.shellpaths":
    source => 'puppet:///modules/people/scopp/shellpaths',
  }

  file { "${home}/.shellaliases":
    source => 'puppet:///modules/people/scopp/shellaliases',
  }

  file { "${home}/.shellvars":
    source => 'puppet:///modules/people/scopp/shellvars',
  }

}
