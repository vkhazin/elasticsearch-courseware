# Filebeat: Overview #

* New in version 5.x
* Moves log processing from external process such as Logstash into the ElasticSearch itself
* Can send the processed logs into ElasticSearch, Logstash, Kafka, Redis and more
* Supports pipeline of data processing, removing fields, adding fields, filtering events, and etc.