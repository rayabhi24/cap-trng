require 'spec_helper'

describe 'webserver::default' do

  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs nginx' do
   expect(chef_run).to install_package('nginx')
  end

  it 'starts nginx' do
   expect(chef_run).to start_service('nginx')
  end

end
