require 'spec_helper'

describe 'yum-oracle::default' do
  context 'on Oracle 5' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(:platform => 'oracle', :version => '5.11') do |node|
        node.normal['yum']['el5_latest']['managed'] = true
        node.normal['yum']['ol5_UEK_latest']['managed'] = true
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
      ChefSpec::ServerRunner.new(:platform => 'oracle', :version => '6.10') do |node|
        node.normal['yum']['el6_latest']['managed'] = true
        node.normal['yum']['ol6_UEK_latest']['managed'] = true
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

  context 'on Oracle 7' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(:platform => 'oracle', :version => '7.6') do |node|
        node.normal['yum']['el7_latest']['managed'] = true
        node.normal['yum']['ol7_UEK_latest']['managed'] = true
      end.converge(described_recipe)
    end

    context 'removing stock configuration files' do
      it 'deletes /etc/yum.repos.d/public-yum-ol7.repo' do
        expect(chef_run).to delete_file('/etc/yum.repos.d/public-yum-ol7.repo')
      end
      it 'deletes /etc/yum.repos.d/oracle-linux-ol7.repo' do
        expect(chef_run).to delete_file('/etc/yum.repos.d/oracle-linux-ol7.repo')
      end
      it 'deletes /etc/yum.repos.d/uek-ol7.repo' do
        expect(chef_run).to delete_file('/etc/yum.repos.d/uek-ol7.repo')
      end
      it 'deletes /etc/yum.repos.d/virt-ol7.repo' do
        expect(chef_run).to delete_file('/etc/yum.repos.d/virt-ol7.repo')
      end
    end

    %w(
      ol7_latest
      ol7_UEK_latest
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end

  # Could not find platform 'oracle/8' on the local disk and an HTTP error was encountered when fetching from Github. A list of available platforms is available at https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
  #
  # context 'on Oracle 8' do
  #  let(:chef_run) do
  #    ChefSpec::ServerRunner.new(:platform => 'oracle', :version => '8') do |node|
  #      node.normal['yum']['el8_latest']['managed'] = true
  #      node.normal['yum']['ol8_UEK_latest']['managed'] = true
  #    end.converge(described_recipe)
  #  end

  #  context 'removing stock configuration files' do
  #    it 'deletes /etc/yum.repos.d/public-yum-ol8.repo' do
  #      expect(chef_run).to delete_file('/etc/yum.repos.d/public-yum-ol8.repo')
  #    end
  #    it 'deletes /etc/yum.repos.d/oracle-linux-ol8.repo' do
  #      expect(chef_run).to delete_file('/etc/yum.repos.d/oracle-linux-ol8.repo')
  #    end
  #    it 'deletes /etc/yum.repos.d/uek-ol8.repo' do
  #      expect(chef_run).to delete_file('/etc/yum.repos.d/uel-ol8.repo')
  #    end
  #  end

  #  %w(
  #    ol8_latest2
  #    ol8_UEK_latest
  #   ).each do |repo|
  #     it "creates yum_repository[#{repo}]" do
  #       expect(chef_run).to create_yum_repository(repo)
  #     end
  #   end
  # end
end
