default['logstash']['instance_name'] = 'server'

# Default Logstash Indexer settings
default['opsworks_logstash']['indexer']['templates'] = {
  input_rabbitmq: "config/input_rabbitmq.conf.erb",
  output_elasticsearch: "config/output_elasticsearch.conf.erb"
}
