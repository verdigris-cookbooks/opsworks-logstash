default['opsworks_logstash']['instance_name'] = 'server'

# Default Logstash Indexer settings
indexer = default['logstash']['instance']['indexer']
indexer['config_templates'] = {}
indexer['config_templates_cookbook'] = 'opsworks_logstash'
indexer['config_templates_variables'] = { instance_name: "indexer" }
indexer['inputs'] = []
indexer['filters'] = []
indexer['outputs'] = []
indexer['pattern_templates'] = {}
indexer['pattern_templates_cookbook'] = 'opsworks_logstash'
indexer['pattern_templates_variables'] = { instance_name: "indexer" }

# Default Logstash Shipper settings
shipper = default['logstash']['instance']['shipper']
shipper['config_templates'] = {}
shipper['config_templates_cookbook'] = 'opsworks_logstash'
shipper['config_templates_variables'] = { instance_name: "shipper" }
shipper['inputs'] = []
shipper['filters'] = []
shipper['outputs'] = []
shipper['pattern_templates'] = {}
shipper['pattern_templates_cookbook'] = 'opsworks_logstash'
shipper['pattern_templates_variables'] = { instance_name: "shipper" }
