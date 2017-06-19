# Performance Tuning #

* Start with configuration of the cluster and its nodes: data, master, and client nodes
* Guesstimate usage pattern: lots of searches, vs. lots of indexing, vs. lots of aggregation
* OS Configuration: number of open file descriptors shall be set to at least 32K-64K
* OS Configuration: disable memory swapping (not always possible in virtual environment)
* Mapping and data-modeling selection: _all, _source, multi-fields
* Search vs Filter - do you need to compute score based on the 'status:active' in your query?
* Use <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-bulk.html" target="_blank">_bulk Api</a> for indexing whenever possible
* Number of replicas and number of shards - reliability and scaling-out