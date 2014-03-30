# == Description
#
# Scripts and similiar for Stephen Copp (aka "scopp").
#
class people::scopp::bin {

  # Gradle Wrapper finder script
  file { '/usr/bin/gw':
    source  => 'puppet:///modules/people/scopp/bin/gw',
    mode    => '0755',
  }

}
