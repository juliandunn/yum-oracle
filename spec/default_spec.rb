require 'spec_helper'

describe 'yum-oracle::default' do
  context 'on Oracle 5' do
    let(:chef_run) do
      ChefSpec::Runner.new(:platform => 'oracle', :version => '5.10') do |node|
        node.set['yum']['el5_latest']['managed'] = true
        node.set['yum']['ol5_UEK_latest']['managed'] = true
      end.converge(described_recipe)
    end

    context 'removing stock configuration files' do
      it 'deletes /etc/yum.repos.d/public-yum-el5.repo' do
        expect(chef_run).to delete_file('/etc/yum.repos.d/public-yum-el5.repo')
      end
    end

    %w(
      el5_latest
      ol5_UEK_latest
).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end

  context 'on Oracle 6' do
    let(:chef_run) do
      ChefSpec::Runner.new(:platform => 'oracle', :version => '6.5') do |node|
        node.set['yum']['el5_latest']['managed'] = true
        node.set['yum']['ol5_UEK_latest']['managed'] = true
      end.converge(described_recipe)
    end

    context 'removing stock configuration files' do
      it 'deletes /etc/yum.repos.d/public-yum-ol6.repo' do
        expect(chef_run).to delete_file('/etc/yum.repos.d/public-yum-ol6.repo')
      end
    end

    %w(
      ol6_latest
      ol6_UEK_latest
).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end
end
