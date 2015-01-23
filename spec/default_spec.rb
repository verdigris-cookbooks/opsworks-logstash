require 'spec_helper'

describe 'opsworks_logstash::default' do
  let(:runner) { ChefSpec::SoloRunner.new }
  let(:node) { runner.node }

  let(:chef_run) do
    node.automatic['memory']['total'] = '1024kB'
    node.automatic[:opsworks][:instance][:layers] = ['test_server']
    node.set['opsworks_logstash']['indexer']['template_variables'] = {}
    runner.converge described_recipe
  end

  let(:opsworks_instance) { node[:opsworks][:instance] }

  it 'sets instance_name attribute' do
    chef_run
    expect(node['opsworks_logstash']['instance_name']).to eq('test_server')
  end

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
