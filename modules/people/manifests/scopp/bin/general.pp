# == Description
#
# Scripts and similiar for Stephen Copp (aka "scopp").
#
class people::scopp::bin::general {

  # Gradle Wrapper finder script
  file { '/usr/bin/gradle':
    source  => 'puppet:///modules/people/scopp/bin/gradle',
    mode    => '0755',
  }

  # Repo sync script
  file { '/usr/bin/repo':
    source  => 'puppet:///modules/people/scopp/bin/repo',
    mode    => '0755',
  }

}
