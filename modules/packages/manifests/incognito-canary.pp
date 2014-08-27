# == Description
#
# Adds the Incognito-canary.app to the Applications
#
class packages::incognito-canary {

exec { "tar xzf /Users/scopp/Dropbox/development/scripts/incognito-canary.tgz":
    cwd       => "/Applications",
    creates   => "/Applications/Incognito-canary.app",
    require  => Class['dropbox'],
}

}
