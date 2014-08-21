# == Description
#
# Adds the Incognito.app to the Applications
#
class packages::incognito {

exec { "tar xzf /Users/scopp/Dropbox/development/scripts/incognito-canary.tgz":
    cwd       => "/Applications",
    creates   => "/Applications/Incognito-canary.app",
}

}
