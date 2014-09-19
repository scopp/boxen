# == Description
#
# Ruby settings and gems specific for Lauren (aka "lcopp").
#
class people::lcopp::ruby {

  require 'ruby::global'

  validate_re($ruby::global::version, '^\S+')

  ruby::gem { "asciidoctor for ${ruby::global::version}":
    gem     => 'asciidoctor',
    ruby    => $ruby::global::version,
    version => '~> 0.1.4'
  }

}
