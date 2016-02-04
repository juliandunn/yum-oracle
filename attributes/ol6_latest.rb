default['yum']['ol6_latest']['repositoryid'] = 'ol6_latest'
default['yum']['ol6_latest']['description'] = 'Oracle Linux $releasever Latest ($basearch)'
default['yum']['ol6_latest']['baseurl'] = 'http://public-yum.oracle.com/repo/OracleLinux/OL6/latest/$basearch/'
default['yum']['ol6_latest']['enabled'] = true
default['yum']['ol6_latest']['managed'] = true
default['yum']['ol6_latest']['metadata_expire'] = '7d'
default['yum']['ol6_latest']['gpgcheck'] = true
default['yum']['ol6_latest']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle'
