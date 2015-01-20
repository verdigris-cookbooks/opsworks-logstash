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

## Recipes

### indexer

Installs Logstash in indexer mode. By default, it will try to fetch logs from
RabbitMQ exchange and index them into Elasticsearch. This behavior can be
overriden with `node['opsworks_logstash']['indexer']` attributes.
