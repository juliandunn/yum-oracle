default['yum']['ol5_UEK_latest']['repositoryid'] = 'ol5_UEK_latest'
default['yum']['ol5_UEK_latest']['description'] = 'Latest Unbreakable Enterprise Kernel for Oracle Linux $releasever ($basearch)'
default['yum']['ol5_UEK_latest']['baseurl'] = 'http://public-yum.oracle.com/repo/OracleLinux/OL5/UEK/latest/$basearch/'
default['yum']['ol5_UEK_latest']['enabled'] = false
default['yum']['ol5_UEK_latest']['managed'] = true
default['yum']['ol5_UEK_latest']['metadata_expire'] = '7d'
default['yum']['ol5_UEK_latest']['gpgcheck'] = true
default['yum']['ol5_UEK_latest']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle'
