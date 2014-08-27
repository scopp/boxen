# == Description
#
# Adds the Incognito.app to the Applications
#
class packages::incognito {

exec { "tar xzf /Users/scopp/Dropbox/development/scripts/incognito.tgz":
    cwd       => "/Applications",
    creates   => "/Applications/Incognito.app",
    require  => Class['dropbox'],
}

}
