# == Description
#
# Applications specific for Stephen Copp (aka "scopp") on
# his work machines.
#
class people::scopp::applications::twc {

    include chrome::canary
    include docker
    include groovy
    include packer
    include skitch
    include sublime_text_2
    include vagrant

    include packages::adium_prefs
    include packages::incognito-canary
    include packages::sublime_text_2_cli
    include packages::sublime_text_2_package_management
    include packages::vip
    include packages::java6

    $home = "/Users/${::boxen_user}"

    file { "${home}/Library/Application Support/Sublime Text 2/Packages/User":
      ensure => 'directory',
      owner  => $::boxen_user,
      mode   => '0755',
    }
    ->
    file { "${home}/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings":
      source  => 'puppet:///modules/people/scopp/sublime-settings',
    }

}
