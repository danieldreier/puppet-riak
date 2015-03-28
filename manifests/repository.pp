# == Class riak::repository
#
# This class selects a package repository to install
#
class riak::repository {

  case $::osfamily {
    'Redhat': { include riak::repository::el }
    'Debian': { include riak::repository::debian }
    default: { fail("No package repository is available for ${::osfamily}") }
  }

}
