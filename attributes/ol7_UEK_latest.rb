default['yum']['ol7_UEK_latest']['repositoryid'] = 'ol7_UEK_latest'
default['yum']['ol7_UEK_latest']['description'] = 'Latest Unbreakable Enterprise Kernel for Oracle Linux $releasever ($basearch)'
default['yum']['ol7_UEK_latest']['baseurl'] = 'http://public-yum.oracle.com/repo/OracleLinux/OL7/UEKR3/$basearch/'
default['yum']['ol7_UEK_latest']['enabled'] = true
default['yum']['ol7_UEK_latest']['managed'] = true
default['yum']['ol7_UEK_latest']['metadata_expire'] = '7d'
default['yum']['ol7_UEK_latest']['gpgcheck'] = false
default['yum']['ol7_UEK_latest']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle'
