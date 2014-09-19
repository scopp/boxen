class people::scopp::dotfiles::lauren {
  include git

  $home = "/Users/${::boxen_user}"

  repository { 'oh-my-zsh' :
    source => 'https://github.com/scopp/oh-my-zsh.git',
    path   => "${home}/.oh-my-zsh",
  }

  file { "${home}/.zshrc":
    source => 'puppet:///modules/people/scopp/zshrc-lauren',
  }

  file { "${home}/.zshenv":
    content => template('people/scopp/zshenv.erb')
  }

  file { "${home}/.zprofile":
    source => 'puppet:///modules/people/scopp/zprofile',
  }

  file { "${home}/.gitconfig":
    source => 'puppet:///modules/people/scopp/gitconfig-lauren',
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
