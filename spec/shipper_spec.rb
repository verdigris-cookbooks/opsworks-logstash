require 'spec_helper'

describe 'opsworks_logstash::shipper' do
  let(:runner) { ChefSpec::SoloRunner.new }
  let(:node) { runner.node }

  let(:chef_run) do
    node.automatic['memory']['total'] = '1024kB'
    node.set[:opsworks][:instance][:layers] = ['shipper']
    node.set['opsworks_logstash']['shipper']['template_variables'] = {}
    runner.converge described_recipe
  end

  let(:opsworks_instance) { node[:opsworks][:instance] }

  it 'installs logstash instance' do
    expect(chef_run).to create_logstash_instance opsworks_instance[:layers][0]
  end

  it 'enables logstash service' do
    expect(chef_run).to enable_logstash_service opsworks_instance[:layers][0]
  end

  it 'creates logstash configuration' do
    expect(chef_run).to create_logstash_config opsworks_instance[:layers][0]
  end

  it 'creates custom grok pattern' do
    expect(chef_run).to create_logstash_pattern opsworks_instance[:layers][0]
  end
end
