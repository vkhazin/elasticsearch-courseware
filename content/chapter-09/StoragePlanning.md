# Storage Planning #

* Raw document size
* _all special field to search on all fields
* doc_values mentioned in parent-child relationship, reduce heap size 
* analyzed vs not_analyzed mapping
* LZ4 vs <a href="https://www.elastic.co/guide/en/elasticsearch/reference/2.0/index-modules.html#_static_index_settings" target="_blank">deflate</a> compression index settings
* <a href="https://www.elastic.co/blog/elasticsearch-storage-the-true-story" target="_blank">Article from Elastic.co</a> lists ranges from 0.6 to 1.4 depending on the above options
* In addition to ElasticSearch data take in consideration snapshots, logs, and OS (operating system) data.
* Maybe safe bet is to 1.5 of the anticipated data volume, but that also means over-allocating
