# == Description
#
# Scripts and similiar for Stephen Copp (aka "scopp").
#
class people::scopp::bin {

  # Gradle Wrapper finder script
  file { '/usr/bin/gradle':
    source  => 'puppet:///modules/people/scopp/bin/gradle',
    mode    => '0755',
  }

}
