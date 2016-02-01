default['yum']['ol7_latest']['repositoryid'] = 'ol7_latest'
default['yum']['ol7_latest']['description'] = 'Oracle Linux $releasever Latest ($basearch)'
default['yum']['ol7_latest']['baseurl'] = 'http://public-yum.oracle.com/repo/OracleLinux/OL7/latest/$basearch/'
default['yum']['ol7_latest']['enabled'] = true
default['yum']['ol7_latest']['managed'] = true
default['yum']['ol7_latest']['metadata_expire'] = '7d'
default['yum']['ol7_latest']['gpgcheck'] = true
default['yum']['ol7_latest']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle'
