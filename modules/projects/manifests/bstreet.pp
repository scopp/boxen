class projects::bstreet {

  include iterm2::stable
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark

  #include intellij
  include adium     # federated Instant Messaging
  include dropbox   # cloud shared folder
  # include evernote  # cloud notes - skipping because installed by App Store
  include keepassx  # local password manager
  include vlc       # local video player

  osx::recovery_message { 'If this Mac is found, please call 720-251-0532': }

  # include osx::global::disable_autocorrect    # disables spelling autocorrection
  include osx::global::disable_key_press_and_hold         # disable press-and-hold for accented character entry
  include osx::global::disable_remote_control_ir_receiver # disable remote control infrared receiver
  include osx::global::enable_keyboard_control_access     # enables the keyboard for navigating controls in dialogs
  include osx::global::expand_print_dialog    # expand the print dialog by default
  include osx::global::expand_save_dialog     # expand the save dialog by default

  # include osx::dock::2d    # use the old flat dock style
  # include osx::dock::autohide    # automatically hide the dock
  # include osx::dock::clear_dock    # ensures the dock only contains apps that are running
  # include osx::dock::disable    # disable the dock by setting a long autohide-delay
  # include osx::dock::hide_indicator_lights    # remove the indicator lights below running apps
  include osx::dock::dim_hidden_apps    # dims icons of hidden apps

  # include osx::finder::empty_trash_securely    # enable Secure Empty Trash
  # include osx::finder::show_all_on_desktop    # does all of the above
  # include osx::finder::show_hard_drives_on_desktop
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_hidden_files
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::unhide_library    # unsets the hidden flag on ~/Library

  include osx::universal_access::ctrl_mod_zoom    # enables zoom by scrolling while holding Control
  include osx::universal_access::enable_scrollwheel_zoom    # enables zoom using the scroll wheel

  include osx::disable_app_quarantine # disable the downloaded app quarantine
  include osx::no_network_dsstores    # disable creation of .DS_Store files on network shares
  include osx::software_update        # download and install software updates

  # Homebrew Packages
  package { [   #  "provider => homebrew, ensure => present," are assumed as defaults
      'imagemagick',
      'phantomjs',
      'watch',
      'ruby-build'
    ]:
  }

  # ZSH extension oh-my-zsh:
  exec { "oh-my-zsh":
    command => "curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh",
    creates => "${home}/.oh-my-zsh",
  }

  ## Packages handy for BStreet
  sublime_text_2::package { 'Prefixr': source => 'wbond/sublime_prefixr' }
  sublime_text_2::package { 'AsciiDoc': source => 'SublimeText/AsciiDoc' }
  sublime_text_2::package { 'Awk': source => 'JohnNilsson/awk-sublime' }
  sublime_text_2::package { 'CSScomb': source => 'csscomb/csscomb-for-sublime' }
  sublime_text_2::package { 'Puppet': source => 'russCloak/SublimePuppet' }
  sublime_text_2::package { 'Vlt': source => 'tomalec/Sublime-Text-2-Vlt-Plugin' }
  ## customize iTerm2
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark

  # media things
  include vlc
}
