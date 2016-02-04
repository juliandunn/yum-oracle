name 'yum-oracle'
maintainer 'Chef Software, Inc.'
maintainer_email 'jdunn@chef.io'
license 'Apache 2.0'
description 'Configures yum repos on an Oracle Linux system'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.2'

depends 'yum', '~> 3.0'
supports 'oracle'
