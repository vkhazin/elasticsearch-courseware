# Setup and Configuration #

* Kibana is an open source product installed separately from Elastic Search
* Can be downloaded from <a href="https://www.elastic.co/downloads/kibana" target="_blank">Elastic.co</a> or install using <a href="https://www.elastic.co/guide/en/kibana/5.1/setup.html#setup-repositories" target="_blank">Linux Repositories</a>
* Configuration file: /etc/kibana/kibana.yml
* Important settings:
```
server.port: 5601
server.host: "0.0.0.0"
elasticsearch.url: "http://localhost:9200"
```
* Additional settings are detailed <a href="https://github.com/elastic/kibana/blob/master/config/kibana.yml" target="_blank">here</a>
* Kibana can be installed on the same nodes where Elastic Search is running, or on separate nodes
* Kibana stores its configuration data in ElasticSearch 
* Accessing Kibana from browser: http://domain-name:5601