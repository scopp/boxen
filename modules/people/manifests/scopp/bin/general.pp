# == Description
#
# Scripts and similiar for Stephen Copp (aka "scopp").
#
class people::scopp::bin::general {

  # Gradle Wrapper finder script
  file { '/opt/bin/gradle':
    source  => 'puppet:///modules/people/scopp/bin/gradle',
    mode    => '0755',
  }

  # Repo sync script
  file { '/opt/bin/repo':
    source  => 'puppet:///modules/people/scopp/bin/repo',
    mode    => '0755',
  }

}
