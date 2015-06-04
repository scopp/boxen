# == Description
#
# Applications specific for Stephen Copp (aka "scopp") on
# his work machines.
#
class people::scopp::applications::work {

    include chrome::canary
    include groovy
    include docker
    include packer
    include vagrant
    include pycharm

    include packages::incognito-canary
    include packages::java6

}
