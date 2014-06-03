# == Description
#
# Downloads and installs Ant to /opt/ant
#
class packages::ant (
  $source = undef,
  $version = '1.9.3',
) {

  if $source {
    $url = $source
  }
  else {
    $url = "http://archive.apache.org/dist/ant/binaries/apache-ant-$version-bin.tar.gz"
  }

file { '/opt':
      ensure  => directory,
      mode    => 0777,
}

exec {
  "Retrieve $url":
    cwd     => "/opt",
    command => "wget $url",
    creates => "/opt/apache-ant-$version-bin.tar.gz",
    timeout => 3600,
}

file { "/opt/apache-ant-$version-bin.tar.gz":
  mode  => '755',
}

exec { "tar xzf /opt/apache-ant-$version-bin.tar.gz":
  cwd       => "/opt",
  creates   => "/opt/apache-ant-$version",
}

file { '/opt/ant':
  ensure  => 'link',
  target  => "/opt/apache-ant-$version",
}

}
