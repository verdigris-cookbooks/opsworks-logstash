# opsworks_logstash

[![Build Status](https://travis-ci.org/verdigris-cookbooks/opsworks-logstash.svg)](https://travis-ci.org/verdigris-cookbooks/opsworks-logstash)

This is a wrapper cookbook which utilizes the [logstash cookbook](https://github.com/lusis/chef-logstash)
for installing [Logstash](http://logstash.net/) on AWS OpsWorks.

## Requirements

### Platforms

* Amazon Linux
* Ubuntu 12.04 LTS
* Ubuntu 14.04 LTS

### Cookbooks

* **logstash** (~> 0.11)

## Attributes

| Key                                      |  Type  | Description                                                                | Default                                                 |
|:-----------------------------------------|:------:|:---------------------------------------------------------------------------|:--------------------------------------------------------|
| `['opsworks_logstash']['instance_name']` | String | Instance name for Logstash; used for setting up directory and service name | EC2 instance name in AWS OpsWorks, `"server"` otherwise |

## Recipes

### default

Installs Logstash and sets up configuration and pattern files.

## License

This cookbook is licensed and distributed under the Simplified BSD license.
See [LICENSE](https://github.com/verdigris-cookbooks/opsworks-rabbitmq/blob/master/LICENSE)
for more details.
