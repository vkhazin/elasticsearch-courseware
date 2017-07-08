# Monitoring Plug-ins #

* ElasticSearch Cluster and Index RESFull Api allowed a lineup of plug-ins
* <a href="https://www.elastic.co/products/x-pack/monitoring" target="_blank">X-Pack:</a> monitoring and cluster management dashboard by Elastic
* Allows to monitor multiple clusters health, indices, and individual nodes
* <a href="http://mobz.github.io/elasticsearch-head/" target="_blank">Head</a> another commonly mentioned monitoring and management plugin
* Head's user interface is a bit dated but it appears to require no license
* <a href="http://bigdesk.org/" target="_blank">BigDesk</a> comes with more appealing user interface
* BigDesk doesn't appear to require a license and similar to head is <a href="https://github.com/lukas-vlcek/bigdesk" target="_blank">open source</a>
* <a href="http://www.elastichq.org/" target="_blank">ElasticHQ</a> runs in browser and is connecting to ElasticSearch Api, requires adding cors support to /etc/elasticsearch/elasticsearch.yml:
```
http.cors.allow-origin: "*"
http.cors.enabled: true
```
* Keep in mind 3rd party plugins are usually ElasticSearch and Kibana version specific