# == Description
#
# Applications specific for Stephen Copp (aka "scopp") on
# his work machines.
#
class people::scopp::applications::work {

    include vagrant
    include chrome::canary
    include 'packages::incognito-canary'
    include 'packages::vip'

}
