name 'SortMeRNA'
maintainer 'Eagle Genomics Ltd.'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures star'
long_description 'Installs/Configures star'
version '0.1.0'
chef_version '>= 12' if respond_to?(:chef_version)

depends 'magic_shell', '= 1.0.1'
depends 'tar'
