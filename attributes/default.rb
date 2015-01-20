default['opsworks_logstash']['instance_name'] = 'server'

# Default Logstash Indexer settings
default['opsworks_logstash']['indexer']['templates'] = {
  "00_input_rabbitmq" => "config/input_rabbitmq.conf.erb",
  "99_output_elasticsearch" => "config/output_elasticsearch.conf.erb"
}
