#
# Author:: Julian C. Dunn (<jdunn@getchef.com>)
# Recipe:: yum-oracle::default
#
# Copyright:: 2021, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

case node['platform_version'].to_i
when 5
  repos = %w(el5_latest ol5_UEK_latest)
  file '/etc/yum.repos.d/public-yum-el5.repo' do
    action :delete
  end
when 6
  repos = %w(ol6_latest ol6_UEK_latest)
  file '/etc/yum.repos.d/public-yum-ol6.repo' do
    action :delete
  end
when 7
  repos = %w(ol7_latest ol7_UEK_latest)
  default_files = %w(
    public-yum-ol7.repo
    oracle-linux-ol7.repo
    uek-ol7.repo
    virt-ol7.repo
  )
  default_files.each do |yum_file|
    file "/etc/yum.repos.d/#{yum_file}" do
      action :delete
    end
  end
when 8
  repos = %w(ol8_latest ol8_UEK_latest ol8_appstream ol8_addons)
  default_files = %w(
    public-yum-ol8.repo
    oracle-linux-ol8.repo
    uek-ol8.repo
  )
  default_files.each do |yum_file|
    file "/etc/yum.repos.d/#{yum_file}" do
      action :delete
    end
  end
when 9
  repos = %w(ol9_latest ol9_UEK_latest ol9_appstream ol9_addons)
  default_files = %w(
    public-yum-ol9.repo
    oracle-linux-ol9.repo
    uek-ol9.repo
  )
  default_files.each do |yum_file|
    file "/etc/yum.repos.d/#{yum_file}" do
      action :delete
    end
  end
end

repos.each do |repo|
  next unless node['yum'][repo]['managed']
  yum_repository repo do
    baseurl node['yum'][repo]['baseurl'] unless node['yum'][repo]['baseurl'].nil?
    cost node['yum'][repo]['cost'] unless node['yum'][repo]['cost'].nil?
    description node['yum'][repo]['description'] unless node['yum'][repo]['description'].nil?
    enabled node['yum'][repo]['enabled'] unless node['yum'][repo]['enabled'].nil?
    enablegroups node['yum'][repo]['enablegroups'] unless node['yum'][repo]['enablegroups'].nil?
    exclude node['yum'][repo]['exclude'] unless node['yum'][repo]['exclude'].nil?
    failovermethod node['yum'][repo]['failovermethod'] unless node['yum'][repo]['failovermethod'].nil?
    fastestmirror_enabled node['yum'][repo]['fastestmirror_enabled'] unless node['yum'][repo]['fastestmirror_enabled'].nil?
    gpgcheck node['yum'][repo]['gpgcheck'] unless node['yum'][repo]['gpgcheck'].nil?
    gpgkey node['yum'][repo]['gpgkey'] unless node['yum'][repo]['gpgkey'].nil?
    http_caching node['yum'][repo]['http_caching'] unless node['yum'][repo]['http_caching'].nil?
    include_config node['yum'][repo]['include_config'] unless node['yum'][repo]['include_config'].nil?
    includepkgs node['yum'][repo]['includepkgs'] unless node['yum'][repo]['includepkgs'].nil?
    keepalive node['yum'][repo]['keepalive'] unless node['yum'][repo]['keepalive'].nil?
    make_cache node['yum'][repo]['make_cache'] unless node['yum'][repo]['make_cache'].nil?
    max_retries node['yum'][repo]['max_retries'] unless node['yum'][repo]['max_retries'].nil?
    metadata_expire node['yum'][repo]['metadata_expire'] unless node['yum'][repo]['metadata_expire'].nil?
    mirror_expire node['yum'][repo]['mirror_expire'] unless node['yum'][repo]['mirror_expire'].nil?
    mirrorlist node['yum'][repo]['mirrorlist'] unless node['yum'][repo]['mirrorlist'].nil?
    mirrorlist_expire node['yum'][repo]['mirrorlist_expire'] unless node['yum'][repo]['mirrorlist_expire'].nil?
    password node['yum'][repo]['password'] unless node['yum'][repo]['password'].nil?
    priority node['yum'][repo]['priority'] unless node['yum'][repo]['priority'].nil?
    proxy node['yum'][repo]['proxy'] unless node['yum'][repo]['proxy'].nil?
    proxy_username node['yum'][repo]['proxy_username'] unless node['yum'][repo]['proxy_username'].nil?
    proxy_password node['yum'][repo]['proxy_password'] unless node['yum'][repo]['proxy_password'].nil?
    report_instanceid node['yum'][repo]['report_instanceid'] unless node['yum'][repo]['report_instanceid'].nil?
    repositoryid node['yum'][repo]['repositoryid'] unless node['yum'][repo]['repositoryid'].nil?
    skip_if_unavailable node['yum'][repo]['skip_if_unavailable'] unless node['yum'][repo]['skip_if_unavailable'].nil?
    source node['yum'][repo]['source'] unless node['yum'][repo]['source'].nil?
    sslcacert node['yum'][repo]['sslcacert'] unless node['yum'][repo]['sslcacert'].nil?
    sslclientcert node['yum'][repo]['sslclientcert'] unless node['yum'][repo]['sslclientcert'].nil?
    sslclientkey node['yum'][repo]['sslclientkey'] unless node['yum'][repo]['sslclientkey'].nil?
    sslverify node['yum'][repo]['sslverify'] unless node['yum'][repo]['sslverify'].nil?
    timeout node['yum'][repo]['timeout'] unless node['yum'][repo]['timeout'].nil?
    username node['yum'][repo]['username'] unless node['yum'][repo]['username'].nil?
    action :create
    only_if { platform_family?('rhel') }
  end
end
