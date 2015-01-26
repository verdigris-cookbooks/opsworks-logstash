# v0.4.1

* Remove grokparsefailure error
* The kernel panic parsing is nested incorrectly -- fixed

# v0.4

* Indexer and shipper recipes now deprecated in favor of default recipe
* Default recipe handles the same setup procedure as the indexer and shipper
  recipes
* ChefSpec test updated

# v0.3.1

* Updates default attributes for indexer and shipper recipes

# v0.3

* `opsworks_logstash::shipper` recipe added
* Support for custom patterns added
* Verdigris specific templates added
* Remove default `config_templates_variables` attribute for indexer

# v0.2

* Added generic templates

# v0.1.1

* Fix `input_rabbitmq` template
* Logstash setup moved to `default` recipe

# v0.1

* Initial release
