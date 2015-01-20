default['opsworks_logstash']['instance_name'] = 'server'

# Default Logstash Indexer settings
indexer = default['logstash']['instance']['indexer']
indexer['config_templates'] = {
  "indexer.conf" => "config/indexer.conf.erb",
}
indexer['config_templates_cookbook'] = 'opsworks_logstash'
indexer['inputs'] = []
indexer['filters'] = []
indexer['outputs'] = []

# Default Logstash Shipper settings
default['opsworks_logstash']['shipper']['templates'] = {
  "00_input_syslog" => "config/input_syslog.conf.erb",

}
