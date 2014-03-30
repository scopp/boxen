# == Description
#
# Adds the Adium 2.0 preferences to /Users/scopp/Library/Application Support/Adium 2.0
#
class packages::adium_prefs {

 exec { "tar xzf /Users/scopp/Dropbox/env_setup/adium2.0.tgz":
    cwd       => "/Users/scopp/Library/Application Support/",
    creates   => "/Users/scopp/Library/Application Support/Adium 2.0",
}

}
