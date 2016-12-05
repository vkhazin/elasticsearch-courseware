# Data Synchronization #

* Previous versions of ElasticSearch advocated concept of rivers
* Rivers would be installed as plug-in into ElasticSearch
* River would pull data automatically from the source database
* Article published by ElasticSearch suggests that <a href="https://www.elastic.co/blog/deprecating-rivers" target="_blank">rivers are now deprecated</a>
* Some NoSql vendors implemented plug-ins for data population and synchronization e.g.: <a href="https://github.com/couchbaselabs/elasticsearch-transport-couchbase" target="_blank">Couchbase</a>
* Some third parties implemented plug-ins for <a href="https://github.com/vroyer/elassandra" target="_blank">Cassandra</a>
* Client specific Sdk tend to support bulk api natively: <a href="https://www.elastic.co/guide/en/elasticsearch/client/javascript-api/current/api-reference-2-4.html" target="_blank">Node.js</a>, <a href="https://www.elastic.co/guide/en/elasticsearch/client/java-api/2.4/java-docs-bulk.html" target="_blank">Java</a>, <a href="http://elasticsearch-py.readthedocs.io/en/master/helpers.html" target="_blank">Python</a>, and etc.