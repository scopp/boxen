# == Description
#
# Downloads and installs Jmeter to /opt/jmeter
#
class packages::jmeter (
  $version1 = '2.7',
  $version2 = '2.11',
) {

$url1= "http://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$version1.tgz"
$url2 = "http://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$version2.tgz"

exec {
  "Retrieve $url1":
    cwd     => "/opt",
    command => "wget $url1",
    creates => "/opt/apache-jmeter-$version1.tgz",
    require   => [ Package["wget"] ];

  "Retrieve $url2":
    cwd     => "/opt",
    command => "wget $url2",
    creates => "/opt/apache-jmeter-$version2.tgz",
    require   => [ Package["wget"] ];
}

file { 
  "Mode 755 /opt/apache-jmeter-$version1.tgz":
    path     => "/opt/apache-jmeter-$version1.tgz",
    mode   => '755',
    require => Exec["Retrieve $url1"];

  "Mode 755 /opt/apache-jmeter-$version2.tgz":
    path     => "/opt/apache-jmeter-$version2.tgz",
    mode   => '755',
    require => [ Exec["Retrieve $url2"] ];
}

exec {
  "Untar Jmeter$version1": 
    command  => "tar xzf /opt/apache-jmeter-$version1.tgz",
    cwd           => "/opt",
    creates      => "/opt/apache-jmeter-$version1",
    require      => [ File["Mode 755 /opt/apache-jmeter-$version1.tgz"] ];

  "Untar Jmeter$version2": 
    command  => "tar xzf /opt/apache-jmeter-$version2.tgz",
    cwd           => "/opt",
    creates      => "/opt/apache-jmeter-$version2",
    require      => [ File["Mode 755 /opt/apache-jmeter-$version2.tgz"] ];
}

file { '/opt/jmeter':
  ensure  => 'link',
  target   => "/opt/apache-jmeter-$version1",
}

}
