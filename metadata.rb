name             'yum-oracle'
maintainer       'Chef Software, Inc.'
maintainer_email 'Julian C. Dunn <jdunn@getchef.com>'
license          'Apache 2.0'
description      'Installs/Configures yum-oracle'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum', '~> 3.0'
