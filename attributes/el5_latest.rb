default['yum']['el5_latest']['repositoryid'] = 'el5_latest'
default['yum']['el5_latest']['description'] = 'Oracle Linux $releasever Latest ($basearch)'
default['yum']['el5_latest']['baseurl'] = 'http://public-yum.oracle.com/repo/OracleLinux/OL5/latest/$basearch/'
default['yum']['el5_latest']['enabled'] = true
default['yum']['el5_latest']['managed'] = true
default['yum']['el5_latest']['metadata_expire'] = '7d'
default['yum']['el5_latest']['gpgcheck'] = false
default['yum']['el5_latest']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle'
