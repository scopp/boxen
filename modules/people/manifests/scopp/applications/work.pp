# == Description
#
# Applications specific for Stephen Copp (aka "scopp") on
# his work machines.
#
class people::scopp::applications::work {

    include 'vagrant'
    include chrome::canary

}
