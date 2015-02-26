# == Description
#
# OS X settings specific for Stephen Copp (aka "scopp").
#
class people::scopp::osx::general {

  boxen::osx_defaults { 'scrollbars always on':
    domain => 'NSGlobalDomain',
    key    => 'AppleShowScrollBars',
    value  => 'Always',
    user   => $::boxen_user,
  }

  boxen::osx_defaults { 'Activity Monitor dock icon':
    domain => 'com.apple.ActivityMonitor',
    key    => 'IconType',
    value  => 4, # 4 - RAM, 5 - CPU
    user   => $::boxen_user,
  }

  osx::recovery_message { 'If this Mac is found, please call 720-515-0010': }

  ### Global Settings
  # disable press-and-hold for accented character entry
  #include osx::global::disable_key_press_and_hold

  # enables the keyboard for navigating controls in dialogs
  include osx::global::enable_keyboard_control_access

  # enables the F1, F2, etc. keys to be treated as standard function keys
  #include osx::global::enable_standard_function_keys

  # expand the print dialog by default
  include osx::global::expand_print_dialog

  # expand the save dialog by default
  include osx::global::expand_save_dialog

  # disable remote control infrared receiver
  #include osx::global::disable_remote_control_ir_receiver

  # disables spelling autocorrection
  #include osx::global::disable_autocorrect

  # enables tap to click
  include osx::global::tap_to_click

  ### Dock Settings
  # use the old flat dock style
  #include osx::dock::2d

  # automatically hide the dock
  #include osx::dock::autohide

  # ensures the dock only contains apps that are running
  #include osx::dock::clear_dock

  # disable the dock by setting a long autohide-delay
  #include osx::dock::disable

  # disable the dashboard
  #include osx::dock::disable_dashboard

  # dims icons of hidden apps
  include osx::dock::dim_hidden_apps

  # remove the indicator lights below running apps
  #include osx::dock::hide_indicator_lights

  ### Finder Settings
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  # does all of the above
  include osx::finder::show_all_on_desktop
  # enable Secure Empty Trash
  include osx::finder::empty_trash_securely
  # unsets the hidden flag on ~/Library
  include osx::finder::unhide_library
  include osx::finder::show_hidden_files
  include osx::finder::enable_quicklook_text_selection
  #include osx::finder::show_warning_before_emptying_trash
  #include osx::finder::show_warning_before_changing_an_extension
  include osx::finder::show_all_filename_extensions
  #include osx::finder::no_file_extension_warnings

  ### Universal Access Settings
  # enables zoom by scrolling while holding Control
  include osx::universal_access::ctrl_mod_zoom

  # enables zoom using the scroll wheel
  include osx::universal_access::enable_scrollwheel_zoom

  # Safari Settings
  # enables developer mode in safari
  include osx::safari::enable_developer_mode

  ### Miscellaneous Settings
  # disable the downloaded app quarantine
  #include osx::disable_app_quarantine

  # disable creation of .DS_Store files on network shares
  include osx::no_network_dsstores

  # download and install software updates
  include osx::software_update

  # remaps capslock to control on attached keyboards
  #include osx::keyboard::capslock_to_control

  ####### Customizable Settings
  # These settings can be used like one-shots or customized.

  # Set the default value (35) - the amount of time (in ms) before a key starts repeating
  #include osx::global::key_repeat_delay
  # ... or set your own
  class { 'osx::global::key_repeat_delay':
    delay => 10
  }

  # Set the default value (0) - the amount of time (in ms) before key repeat 'presses'
  include osx::global::key_repeat_rate
  # ... or set your own
  #class { 'osx::global::key_repeat_rate':
  #  rate => 2
  #}

  # Set the default value (enabled=true) - enable/disable 'natural' mouse scrolling. Requires re-login for new settings to initialize.
  include osx::global::natural_mouse_scrolling
  # ... or set your own
  #class { 'osx::global::natural_mouse_scrolling':
  #  enabled => false
  #}

  # Set the default value (1.5) - the amount the cursor will be zoomed
  #include osx::universal_access::cursor_size
  # ... or set your own
  #class { 'osx::universal_access::cursor_size':
  #  zoom => 2
  #}

  # Set the default value (36) - the size of the dock icons, in pixels
  #include osx::dock::icon_size
  # ... or set your own
  class { 'osx::dock::icon_size':
    size => 30
  }

  # Set the default value ('right') - the location of the dock on the screen ('right', 'left', 'top', 'bottom')
  #include osx::dock::position
  # ... or set your own
  class { 'osx::dock::position':
    position => 'left'
  }

  # Set the default value ('start') - the location to pin the dock to ('start', 'middle', 'end')
  #include osx::dock::pin_position
  # ... or set your own
  #class { 'osx::dock::pin_position':
  #  position => 'start'
  #}

  # configure the action for a hot corner
  # Make the top left corner display the Dashboard
  #osx::dock::hot_corner { 'Top Left':
  #  action => 'Dashboard'
  #}
  # Make the bottom right corner show the desktop
  #osx::dock::hot_corner { 'Show the desktop':
  #  position => 'Bottom Right',
  #  action => 'Desktop'
  #}

  # configure the hot corners
  # Make the top right corner start the screen saver and the bottom left corner launch Mission Control
  #class { 'osx::dock::hot_corners':
  #  top_right => "Start Screen Saver",
  #  bottom_left => "Mission Control"
  #}


  # Set the default value (true) - enable interface sound effects (true, false)
  include osx::sound::interface_sound_effects
  # ... or set your own
  #class { 'osx::sound::interface_sound_effects':
  #  enable => false
  #}

  # Set the default mode (1) - the button mode for multitouch mice (1, 2) Requires re-login for new settings to initialize.
  #include osx::mouse::button_mode
  # ... or set your own
  class { 'osx::mouse::button_mode':
    mode => 2
  }

  # Set the default value (enabled=false) - enable/disable smart zoom for multitouch mice Requires re-login for new settings to initialize.
  #include osx::mouse::smart_zoom
  # ... or set your own
  class { 'osx::mouse::smart_zoom':
    enabled => true
  }

  # Set the default value (enabled=false) - enable/disable swipe between pages for multitouch mice Requires re-login for new settings to initialize.
  #include osx::mouse::swipe_between_pages
  # ... or set your own
  class { 'osx::mouse::swipe_between_pages':
    enabled => true
  }

  # Set the default value (true, 128) - size of dock icon magnification
  #include osx::dock::magnification
  # ... or set your own
  class { 'osx::dock::magnification':
    magnification => false,
    magnification_size => 84
  }

  host {
    # Tower
    'tower': ip => '10.143.47.12';

    # Betas
    'beta01.twcable.com': ip => '71.74.49.57';
    'beta02-residential.timewarnercable.com': ip => '71.74.49.58';

    # Dispatchers
    'webcms-web01-residential.timewarnercable.com': ip => '68.168.70.16';
    'webcms-web02-residential.timewarnercable.com': ip => '68.168.70.144';
    'webcms-web03-residential.timewarnercable.com': ip => '68.168.71.16';
    'webcms-web04-residential.timewarnercable.com': ip => '68.168.71.144';
    'webcms-web05-residential.timewarnercable.com': ip => '68.168.70.77';
    'webcms-web06-residential.timewarnercable.com': ip => '68.168.70.207';
    'webcms-web07-residential.timewarnercable.com': ip => '68.168.71.79';
    'webcms-web08-residential.timewarnercable.com': ip => '68.168.71.207';
    'webcms-web09-residential.timewarnercable.com': ip => '68.168.70.31';
    'webcms-web10-residential.timewarnercable.com': ip => '68.168.71.31';

    # publishers
    'webcms-pub01-residential.timewarnercable.com': ip => '68.168.71.15';
    'webcms-pub02-residential.timewarnercable.com': ip => '68.168.71.143';
    'webcms-pub03-residential.timewarnercable.com': ip => '68.168.71.17';
    'webcms-pub04-residential.timewarnercable.com': ip => '68.168.71.145';
    'webcms-pub05-residential.timewarnercable.com': ip => '68.168.70.79';
    'webcms-pub06-residential.timewarnercable.com': ip => '68.168.70.207';
    'webcms-pub07-residential.timewarnercable.com': ip => '68.168.71.79';
    'webcms-pub08-residential.timewarnercable.com': ip => '68.168.71.207';
    'webcms-pub09-residential.timewarnercable.com': ip => '68.168.70.235';
    'webcms-pub10-residential.timewarnercable.com': ip => '68.168.71.235';
  }

}
