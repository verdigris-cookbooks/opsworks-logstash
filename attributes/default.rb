default['opsworks_logstash']['instance_name'] = 'server'

# Default Logstash Indexer settings
indexer = default['logstash']['instance']['indexer']
indexer['config_templates'] = {
  "indexer.conf" => "config/indexer.conf.erb",
}
indexer['config_templates_cookbook'] = 'opsworks_logstash'
indexer['config_templates_variables'] = {
  instance_name: "indexer"
}
indexer['inputs'] = []
indexer['filters'] = []
indexer['outputs'] = []
