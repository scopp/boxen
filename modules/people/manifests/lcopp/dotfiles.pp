# == Description
#
# "Dot files" for Lauren (aka "lcopp").
#
# == Assumptions
#
# The .zshenv template assumes that the 'github_token' fact has been set.
# In Boxen, this is typically done in ~/.boxen/config.json
#
class people::lcopp::dotfiles {
  include git

  $home = "/Users/${::boxen_user}"

  repository { 'oh-my-zsh' :
    source => 'https://github.com/scopp/oh-my-zsh.git',
    path   => "${home}/.oh-my-zsh",
  }

  file { "${home}/.zshrc":
    source => 'puppet:///modules/people/lcopp/zshrc',
  }

  file { "${home}/.zprofile":
    source => 'puppet:///modules/people/lcopp/zprofile',
  }

  file { "${home}/.profile":
    source => 'puppet:///modules/people/lcopp/profile',
  }

  file { "${home}/.shellpaths":
    source => 'puppet:///modules/people/lcopp/shellpaths',
  }

  file { "${home}/.shellaliases":
    source => 'puppet:///modules/people/lcopp/shellaliases',
  }

  file { "${home}/.shellvars":
    source => 'puppet:///modules/people/lcopp/shellvars',
  }

}
