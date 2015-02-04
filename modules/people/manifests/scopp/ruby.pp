# == Description
#
# Ruby settings and gems specific for Stephen Copp (aka "scopp").
#
class people::scopp::ruby {

  require 'ruby::global'

  validate_re($ruby::global::version, '^\S+')

  ruby_gem { "asciidoctor for ${ruby::global::version}":
    gem          => 'asciidoctor',
    ruby_version => "${ruby::global::version}",
    version      => '~> 0.1.4'
  }

}
