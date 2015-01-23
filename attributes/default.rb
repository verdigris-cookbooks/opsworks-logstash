default['opsworks_logstash']['instance_name'] = if node[:opsworks] &&
  node[:opsworks][:instance] && node[:opsworks][:instance][:layers].length > 0
    node[:opsworks][:instance][:layers][0]
  else
    'server'
  end

instance_name = node['opsworks_logstash']['instance_name']

# Default Logstash settings
instance = default['logstash']['instance'][instance_name]
instance['config_templates'] = {}
instance['config_templates_cookbook'] = 'opsworks_logstash'
instance['config_templates_variables'] = { instance_name: instance_name }
instance['inputs'] = []
instance['filters'] = []
instance['outputs'] = []
instance['pattern_templates'] = {}
instance['pattern_templates_cookbook'] = 'opsworks_logstash'
instance['pattern_templates_variables'] = { instance_name: instance_name }
